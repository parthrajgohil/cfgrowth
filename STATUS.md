# Status: decisions, progress, next steps

The living status of the growth system. Started 2026-09-23 as a handoff note when
setup moved from the admin user to the `cfgrowth` user (formerly HANDOFF.md).
Sessions should keep it current: tick steps, log decisions with a date, and
record what is waiting on the CEO.

## Working agreement with the CEO (Parthraj)

- Plan first, then build step by step.
- **Ask for approval before installing anything or running sudo.**
- Human approval is required before any email is sent, anything is posted, or any
  CRM/pipeline record is changed. The approval gate enforces this and must stay in place.
- Mac mini M1, 8GB, dedicated to this system. **Max 3 concurrent Claude sessions.**

## Decisions made

| Topic | Decision |
|---|---|
| Machine user | Dedicated standard (non-admin) user `cfgrowth`, set to log in automatically. The admin account is for maintenance only. |
| Email / files | Microsoft 365 (Outlook, OneDrive) through Anthropic's official Microsoft 365 connector (claude.ai). Leave the admin setting that lets it send email **off**. |
| Claude account (2026-09-23) | The M365 connector refuses Claude accounts on a personal email, and a Claude account's email can't be changed. So: new **Claude Team** org owned by `parthraj@corefragment.com` (admin, CEO's own seat). The growth system uses a separate M365 user + Claude **member** seat, `parthraj.gohil@corefragment.com`; this Mac's Claude Code logs in as that account and M365 connects to that mailbox only (agents can't read the CEO inbox). Old gmail.com Pro account to be cancelled. Check with Anthropic that a seat used only by this machine is fine. |
| Team plan (2026-09-23) | Plan to extend to the team of 6 on Claude Team seats, not a self-built API portal. The API (Console) is for client/AI-ML project work only. Shared context comes from committed `CLAUDE.md`/skills/agents, not from Claude memory. |
| Daily prospecting (2026-09-24) | CEO wants the system to find leads, not just draft. Headless weekday run (`scripts/daily-prospecting.sh` + prompt `scripts/daily-prospecting.md`): up to 5 new A/B leads per day into `accounts/` + `drafts/email/`, summary in `drafts/leads/<date>.md`. The CEO reviews and runs Saleshandy. Recipient emails are still filled in by a human until an email-data provider is chosen (Saleshandy's lead finder vs Hunter/Apollo: open). |
| Teams notifications (2026-09-24) | One Teams message per lead to the CEO's 1:1 chat (chat ID in the gate). The gate **allows** only that chat, with no @mentions, and **denies** every other Teams write. Requires M365 write tools to stay ON; the "write tools off" decision above is superseded for Teams, and the gate still asks before every email/file write. |
| Hardware (2026-09-23) | Stay on the Mac mini (3-session cap fits 8GB). If more sessions are needed later, add the Lenovo ThinkCentre (i5-7th gen, 16GB) on Ubuntu as a second machine: systemd instead of launchd, add Linux mail/open rules to the gate, per-machine session cap. |
| Cold outreach | Saleshandy stays human-operated for sending: the CEO launches every sequence. |
| Saleshandy connector (2026-09-25) | The CEO added Saleshandy's own connector (`mcp.saleshandy.com`) in org settings (not the third-party MCP ruled out earlier). Gate (verified against all 67 real tools, 2026-09-25): reads and email lookups (`enrich_contacts`, `enrich_companies`) pass; adding/changing prospects or sequences **asks**; `update_sequence_status`, `reply_to_email`, schedules, tasks, mailbox/domain changes and `purchase_domain` are **denied**. |
| CRM (2026-09-25) | **HubSpot** connected. Gate (verified against all 34 real tools): reads pass, CRM writes (`manage_crm_objects` etc.) **ask**, marketing email / blog / landing / website pages **denied**. The unattended daily run can't write to HubSpot, so it proposes records in its summary. `pipeline/leads.csv` stays until HubSpot is connected. |
| LinkedIn | **Not** connected (User Agreement risk). Sales Navigator workflow is parked in BACKLOG.md. |
| Company context | Drafted from corefragment.com into CLAUDE.md. CEO will correct it and fill in the priority table. |
| Standing sessions | Proposed: "lead-desk" (always on, Remote Control) plus a daily prospecting run, leaving 1 slot free. Not yet confirmed. |

## Done (steps 1–3, files only, nothing installed)

- CLAUDE.md, two agents (`account-researcher`, `content-writer`), three skills
  (`cf-voice`, `cold-email`, `linkedin-post`)
- `.claude/settings.json`: permission rules, `sudo` denied, bypass mode disabled
- `.claude/hooks/approval-gate.sh`: forces approval for MCP tools that send, post or
  modify data, network/mail shell commands, and `pipeline/` edits. Tested on 14 cases.
  Requires `/usr/bin/jq` (ships with macOS).

## Next steps

1. [x] Claude Code installed and signed in as `cfgrowth` (2.1.280). Repo is at
       `~/cf-growth`.
2. [x] Command Line Tools were already present. Ran `git init` (branch `main`);
       set the identity repo-locally (Parthraj Gohil / parthraj.in@gmail.com);
       made the initial commit.
3. [x] Approval-gate test is now a script: `scripts/test-approval-gate.sh` (29 cases,
       all pass). Fixed a gap: `open mailto:…` and `open -a "Microsoft Outlook"`
       bypassed the gate.
4. [x] Connectors (2026-09-24). This Mac's Claude Code is logged in as
       `parthraj.gohil@corefragment.com`, a Team member of the CoreFragment org.
       Microsoft 365 is connected to that mailbox; the Google connectors are gone.
       Entra admin consent was granted. All 50 M365 tools were checked against the
       gate: 35 write tools ask, 15 read tools pass. They are now in
       `scripts/test-approval-gate.sh` (79 cases, all pass).
       **Open:** M365 **write tools are ON** (granted scopes include Mail.Send,
       Mail.ReadWrite, ChatMessage.Send, Files.ReadWrite.All), against the decision
       above. The gate still forces approval on each call. CEO to turn them off in
       Organization settings → Connectors → Microsoft 365, or decide to keep them.
       HubSpot is still pending.
5. [ ] `scripts/cf-bg.sh` (refuses a 4th background session using
       `claude agents --json`); enable Remote Control.
6a. [x] Daily prospecting LaunchAgent `com.corefragment.daily-prospecting` loaded 2026-09-25
       (weekdays 09:17 IST, runs `scripts/daily-prospecting.sh`, logs in `logs/`). The CEO
       installed it by hand after auto mode refused to. First manual run on 2026-09-24:
       4 A-grade leads, 4 Teams notifications delivered. Remove with
       `launchctl bootout gui/$(id -u)/com.corefragment.daily-prospecting`.
6. [ ] LaunchAgent `~/Library/LaunchAgents/com.corefragment.claude-respawn.plist`
       that runs `claude respawn --all` at login. Verify whether respawn revives
       sessions after a reboot; if not, have the script start the standing sessions
       through cf-bg.sh. Set automatic login for `cfgrowth` (not possible with
       FileVault on).
7. [ ] Dry run: research one account, draft one email, and confirm that sending it
       triggers an approval prompt.

## Waiting on the CEO

- Priority table in CLAUDE.md, and confirming the proof points ("10+" vs "12+" countries)
- 2–3 on-voice emails or posts, saved as `.claude/skills/cf-voice/examples.md`
- Confirm the standing sessions
- M365 write tools: turn off (planned) or keep
- Which mailbox Saleshandy sends from and where replies land
- Step 6 (respawn at login) and automatic login for `cfgrowth`, needed for scheduled runs after a reboot
- Email-data provider for recipient addresses (Saleshandy lead finder vs Hunter/Apollo)
- Whether to push the repo to a private remote (backup + easier move to a 2nd machine)
