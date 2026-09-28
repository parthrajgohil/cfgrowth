#!/bin/bash
# Render LinkedIn post images: drafts/linkedin/images/*.svg -> *.png (same name).
# Runs after each LinkedIn content job (called by cf-headless.sh); safe to run by hand.
# - Replaces {{LOGO}} in the SVG with the CoreFragment logo (logo/CoreFragment-Logo.png).
# - Renders with macOS Quick Look at 2x (CF_IMAGE_SCALE) inside a square canvas, then crops
#   to 2x the SVG's own width x height (Quick Look always produces a square thumbnail).
# - Copies each new PNG into the OneDrive sync folder "CF LinkedIn images" if it exists,
#   so the CEO can open it from the link in the Teams message.
# - Carousels: slides named <base>-slide-<N>.svg are also combined, in order, into
#   <base>-carousel.pdf (LinkedIn document posts need a PDF).
# Only uses built-in tools (qlmanage, sips, macOS's PDF 'join', /usr/bin/python3). Re-renders an image only
# when its SVG is newer than its PNG.

cd "$(dirname "$0")/.." || exit 1
dir=drafts/linkedin/images
logo=logo/CoreFragment-Logo.png
onedrive=$(ls -d "$HOME"/Library/CloudStorage/OneDrive-*/"CF LinkedIn images" 2>/dev/null | head -1)
scale=${CF_IMAGE_SCALE:-2}   # render at 2x (e.g. 2400x3000) so text stays sharp on phone screens
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
shopt -s nullglob

for svg in "$dir"/*.svg; do
  png="${svg%.svg}.png"
  [[ -f "$png" && "$png" -nt "$svg" ]] && continue
  base=$(basename "$svg" .svg)
  size=$(/usr/bin/python3 - "$svg" "$logo" "$tmp/$base.svg" <<'EOF'
import sys, re, base64
src, logo, out = sys.argv[1:4]
s = open(src, encoding='utf-8').read()
m = re.search(r'<svg[^>]*\bwidth="(\d+)"[^>]*\bheight="(\d+)"', s)
w, h = (int(m.group(1)), int(m.group(2))) if m else (1200, 1200)
try:
    data = base64.b64encode(open(logo, 'rb').read()).decode()
    s = s.replace('{{LOGO}}', 'data:image/png;base64,' + data)
except OSError:
    s = s.replace('{{LOGO}}', '')
side = max(w, h)
# Put the design at 1:1 in a square canvas, centred, on a white background.
s = re.sub(r'<svg[^>]*>', lambda mm: (
    f'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" '
    f'width="{side}" height="{side}" viewBox="0 0 {side} {side}">'
    f'<rect width="{side}" height="{side}" fill="#FFFFFF"/>'
    f'<g transform="translate({(side - w) // 2},{(side - h) // 2})">'), s, count=1)
s = s.replace('</svg>', '</g></svg>')
open(out, 'w', encoding='utf-8').write(s)
print(side, w, h)
EOF
)
  read -r side w h <<<"$size"
  qlmanage -t -s $((side * scale)) -o "$tmp" "$tmp/$base.svg" >/dev/null 2>&1
  if [[ ! -f "$tmp/$base.svg.png" ]]; then echo "render failed: $svg"; continue; fi
  sips -c $((h * scale)) $((w * scale)) "$tmp/$base.svg.png" --out "$png" >/dev/null &&
    echo "rendered $png ($((w * scale))x$((h * scale)))"
  if [[ -n "$onedrive" ]]; then cp "$png" "$onedrive/" && echo "copied to OneDrive: $onedrive/$(basename "$png")"; fi
done

# Combine carousel slides into one PDF per post (re-built when any slide PNG is newer).
join="/System/Library/Automator/Combine PDF Pages.action/Contents/MacOS/join"
for first in "$dir"/*-slide-1.png; do
  base="${first%-slide-1.png}"
  pdf="$base-carousel.pdf"
  slides=$(ls "$base"-slide-*.png | sort -t- -k"$(awk -F- '{print NF}' <<<"$base-slide-1.png")" -n)
  newest=$(ls -t "$base"-slide-*.png | head -1)
  [[ -f "$pdf" && "$pdf" -nt "$newest" ]] && continue
  pages=()
  for sl in $slides; do sips -s format pdf "$sl" --out "$tmp/$(basename "${sl%.png}").pdf" >/dev/null && pages+=("$tmp/$(basename "${sl%.png}").pdf"); done
  "$join" -o "$pdf" "${pages[@]}" && echo "carousel $pdf (${#pages[@]} slides)"
  if [[ -n "$onedrive" ]]; then cp "$pdf" "$onedrive/" && echo "copied to OneDrive: $onedrive/$(basename "$pdf")"; fi
done
