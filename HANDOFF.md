# Setup handoff: resume here

Written 2026-09-23 when the setup moved from the admin user to the `cfgrowth`
standard user. A new Claude session should read this file and CLAUDE.md, then
continue from "Next steps".

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
| Hardware (2026-09-23) | Stay on the Mac mini (3-session cap fits 8GB). If more sessions are needed later, add the Lenovo ThinkCentre (i5-7th gen, 16GB) on Ubuntu as a second machine: systemd instead of launchd, add Linux mail/open rules to the gate, per-machine session cap. |
| CRM | None yet. Recommended **HubSpot Free** (official remote MCP, works on the free tier; Saleshandy has a native HubSpot sync). **CEO has not confirmed yet.** Interim CRM: `pipeline/leads.csv`, edited by a human only. |
| Cold outreach | Saleshandy stays human-operated. Agents produce prospect lists and email copy; the CEO imports them and launches. Do **not** connect the third-party Saleshandy MCP. |
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
4. [ ] Connectors: Microsoft 365 (claude.ai connector, browser OAuth); HubSpot if
       confirmed. After connecting, list the real tool names and check each one
       against the gate, and add them to `scripts/test-approval-gate.sh`.
       Waiting on the CEO to: create M365 user `parthraj.gohil@`; create the Claude
       Team org as `parthraj@` and invite `parthraj.gohil@` as a member; add M365 in
       Organization settings → Connectors (write tools off); grant Entra org consent;
       connect M365 as `parthraj.gohil@`; run `/login` here as `parthraj.gohil@`.
       Verify afterwards: Gmail/Google Calendar/Google Drive connectors are gone.
5. [ ] `scripts/cf-bg.sh` (refuses a 4th background session using
       `claude agents --json`); enable Remote Control.
6. [ ] LaunchAgent `~/Library/LaunchAgents/com.corefragment.claude-respawn.plist`
       that runs `claude respawn --all` at login. Verify whether respawn revives
       sessions after a reboot; if not, have the script start the standing sessions
       through cf-bg.sh. Set automatic login for `cfgrowth` (not possible with
       FileVault on).
7. [ ] Dry run: research one account, draft one email, and confirm that sending it
       triggers an approval prompt.

## Waiting on the CEO

- HubSpot yes or no
- Priority table in CLAUDE.md, and confirming the proof points ("10+" vs "12+" countries)
- 2–3 on-voice emails or posts, saved as `.claude/skills/cf-voice/examples.md`
- Confirm the standing sessions
- Claude/M365 account setup for step 4 (see above)
- Which mailbox Saleshandy sends from and where replies land
- Go-ahead for step 6 (LaunchAgent), which auto mode blocked as persistence
- Whether to push the repo to a private remote (backup + easier move to a 2nd machine)
