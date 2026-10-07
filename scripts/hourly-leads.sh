#!/bin/bash
# Hourly lead-stage run (weekdays 09:03–23:03 IST via launchd/com.corefragment.hourly-leads.plist).
# Acts on HubSpot "CF lead stage" changes the CEO made (Approved, Needs edit) and
# watches Saleshandy for replies. See scripts/hourly-leads.md.
cd "$(dirname "$0")/.." || exit 1
scripts/cf-headless.sh hourly scripts/hourly-leads.md
rc=$?
# Saleshandy import files go to the CEO through OneDrive ("CF Saleshandy imports"), when that
# folder exists. Only new or changed files are copied.
od=$(ls -d "$HOME"/Library/CloudStorage/OneDrive-*/"CF Saleshandy imports" 2>/dev/null | head -1)
if [[ -n "$od" ]]; then
  for f in drafts/saleshandy/*.csv; do
    [[ -f "$f" ]] || continue
    [[ -f "$od/$(basename "$f")" && ! "$f" -nt "$od/$(basename "$f")" ]] || cp "$f" "$od/"
  done
fi
exit $rc
