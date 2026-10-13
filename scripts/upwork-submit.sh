#!/bin/bash
# Upwork submit (CEO decision 2026-10-13): the CEO approves a drafted proposal by replying
# "send <code>" on Teams; scripts/upwork-submit.md submits it. launchd starts this every
# 10 minutes (launchd/com.corefragment.upwork-submit.plist), but Claude runs only while an
# alert is waiting for a reply: every 10 minutes for 3 hours after the newest alert, then
# hourly, until 24 hours after the alert. Otherwise it exits without starting anything.
cd "$(dirname "$0")/.." || exit 1
pending=upwork/pending.tsv
[[ -f $pending ]] || exit 0
now=$(date +%s); newest=0
while IFS=$'\t' read -r code job file alerted bid status updated; do
  [[ $status == awaiting ]] || continue
  t=$(date -j -f '%Y-%m-%d %H:%M' "$alerted" +%s 2>/dev/null) || continue
  (( now - t < 86400 && t > newest )) && newest=$t
done < <(tail -n +2 "$pending")
(( newest > 0 )) || exit 0
stamp=logs/.upwork-submit.last
if (( now - newest > 10800 )); then
  last=$(cat "$stamp" 2>/dev/null || echo 0)
  (( now - last < 3300 )) && exit 0
fi
mkdir -p logs && echo "$now" >"$stamp"
exec scripts/cf-headless.sh upwork-submit scripts/upwork-submit.md
