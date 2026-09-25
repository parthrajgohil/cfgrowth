#!/bin/bash
# Daily prospecting run (weekdays 09:17 IST via launchd/com.corefragment.daily-prospecting.plist).
# Finds new leads, writes briefs and drafts, records them in HubSpot (stage New) and
# alerts the CEO on Teams. See scripts/daily-prospecting.md.
exec "$(dirname "$0")/cf-headless.sh" prospecting "$(dirname "$0")/daily-prospecting.md"
