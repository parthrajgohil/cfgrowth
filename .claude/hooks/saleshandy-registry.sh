#!/bin/bash
# PostToolUse hook: records Saleshandy sequences and first steps that agents create, so
# the approval gate lets agents finish building (only) their own new sequences.
# Lines: "<epoch> seq <sequenceId>" and "<epoch> step1 <stepId> <sequenceId>".
input=$(cat)
tool=$(jq -r '.tool_name // ""' <<<"$input")
reg=${CF_SEQ_REGISTRY:-"$(cd "$(dirname "$0")/../.." && pwd)/logs/saleshandy-agent-sequences.log"}
resp=$(jq -c '.tool_response // ""' <<<"$input")
id_after() { grep -oE "$1"'[\\"]*: *[\\"]*[A-Za-z0-9]{6,}' <<<"$resp" | head -1 | grep -oE '[A-Za-z0-9]{6,}$'; }
case "$tool" in
  mcp__*[Ss]aleshandy__create_sequence)
    id=$(id_after sequenceId)
    [[ -n "$id" ]] && mkdir -p "$(dirname "$reg")" && echo "$(date +%s) seq $id" >>"$reg"
    ;;
  mcp__*[Ss]aleshandy__add_sequence_step)
    seq=$(jq -r '.tool_input.sequenceId // ""' <<<"$input")
    if [[ $(jq -r '.tool_input.absoluteDays // 0' <<<"$input") == 1 && -n "$seq" ]]; then
      step=$(id_after stepId)
      [[ -n "$step" ]] && echo "$(date +%s) step1 $step $seq" >>"$reg"
    fi
    ;;
esac
exit 0
