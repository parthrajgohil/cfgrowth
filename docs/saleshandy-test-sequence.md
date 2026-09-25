# Saleshandy test sequence: agent leads (built 2026-09-25, id `bZwp7qe9zQ`)

Sender: `parthraj.gohil@corefragment.com` (warm-up started 2026-09-25). Import file:
`drafts/saleshandy/<date>.csv`, written by the hourly run with the exact field labels
below. Map each CSV column to the Saleshandy field of the same name when importing.

## Sequence settings
- Name: **CF agent leads (6-week test)**
- Sending account: parthraj.gohil@corefragment.com only
- **Open tracking OFF, click tracking OFF**, plain text, no images, at most one link
- Daily limit ≤ 20; send window 09:00–17:00 in the **prospect's** time zone, Mon–Fri
- Stop on reply; follow-ups go as replies in the same thread

Opt-out: Saleshandy's unsubscribe text ("Reply 'Stop'…") is on for every email, so leave `P.S. line`
empty on import and don't add our own opt-out line to the follow-ups.

## Steps
**Step 1 (day 0)**, subject `{{Custom Subject Line}}`
```
Hi {{First Name}},

{{Custom First Line}}

{{Custom Second Line}}

{{Custom Third Line}}

{{Custom CTA}}

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

{{P.S. line}}
```
**Step 2 (day 3)**, reply in thread
```
Hi {{First Name}},

{{Custom Follow Up 1 First Line}}

{{Custom Follow Up 1 Second Line}}

{{Custom Follow Up 1 Third Line}}
```

**Step 3 (day 8)**, reply in thread
```
Hi {{First Name}},

{{Custom Follow Up 2}}
```

**Step 4 (day 15)**, reply in thread
```
Hi {{First Name}},

{{Custom Follow Up 3}}
```

## Measuring (after ~100–150 prospects)
Baseline (last year): 1.1% replies, 0 positive, inbox score 66.
Target: ≥ 3% replies with some positive, inbox score > 80. See STATUS.md, "Outreach review".
