#!/bin/bash
# LinkedIn content run (Mon/Wed/Fri 11:47 IST via launchd/com.corefragment.linkedin-content.plist).
# Writes one company-page post (plus its image or carousel as SVG) and sends it to the CEO on
# Teams, then renders the SVGs to PNG/PDF on the Mac (scripts/render-linkedin-images.sh).
# See scripts/linkedin-content.md.
here="$(dirname "$0")"
"$here/cf-headless.sh" linkedin "$here/linkedin-content.md"
status=$?
"$here/render-linkedin-images.sh" >>"$here/../logs/linkedin-$(date +%F).log" 2>&1
exit $status
