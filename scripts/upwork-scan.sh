#!/bin/bash
# Upwork scan (weekdays 10:33, 13:33, 17:33, 20:33, 23:33 IST via
# launchd/com.corefragment.upwork-scan.plist). Separate channel: see
# .claude/skills/upwork/SKILL.md and scripts/upwork-scan.md. Data stays in upwork/.
exec "$(dirname "$0")/cf-headless.sh" upwork "$(dirname "$0")/upwork-scan.md"
