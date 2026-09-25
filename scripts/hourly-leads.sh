#!/bin/bash
# Hourly lead-stage run (weekdays 09:03–19:03 IST via launchd/com.corefragment.hourly-leads.plist).
# Acts on HubSpot "CF lead stage" changes the CEO made (Approved, Needs edit) and
# watches Saleshandy for replies. See scripts/hourly-leads.md.
exec "$(dirname "$0")/cf-headless.sh" hourly "$(dirname "$0")/hourly-leads.md"
