#!/bin/bash
# LinkedIn content run (Mon/Wed/Fri 11:47 IST via launchd/com.corefragment.linkedin-content.plist).
# Writes one company-page post (plus visual brief) and sends it to the CEO on Teams.
# See scripts/linkedin-content.md.
exec "$(dirname "$0")/cf-headless.sh" linkedin "$(dirname "$0")/linkedin-content.md"
