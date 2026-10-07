---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: ampacimon
recipient: Thibaut Libert, Head of Electronics Department (email: TO BE FILLED BY HUMAN)
sources: [accounts/ampacimon.md, https://corefragment.com/case-study/access-control-system, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Ampacimon · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/350928398034) · brief: `accounts/ampacimon.md`
- **Website:** https://www.ampacimon.com · **News:** https://www.ampacimon.com/news · **LinkedIn:** https://www.linkedin.com/company/ampacimon/ · **X:** @ampacimoninc
- **HQ:** Loncin (Liège), Belgium · **Founded:** 2010 · **Size:** 51-100
- **Funding:** Series C ~EUR 10M (2023-10)
- **Recent news:** 2026-04-30 National Grid 5-year DLR contract (585 km, with LineVision and Heimdall); 2026-07-02 Sense X on seven lines with Winter Wind; 2026-02-02 AP Sensing partnership

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Thibaut Libert (**primary**) | Head of Electronics Department | unverified | lead ID 116074945 | 54c2863b7468697af7f16aa4 (has email) | [564632368855](https://app.hubspot.com/contacts/247517534/record/0-1/564632368855) |
| Nabil Khouya | Chief Product Officer | unverified | lead ID 322151581 | 5570969d73696466d74d6c00 (has email) | [564653192901](https://app.hubspot.com/contacts/247517534/record/0-1/564653192901) |

## Subject options
1. sense x electronics
2. national grid dlr rollout
3. line sensor hardware

---

## Email 1 (day 0), ~90 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

Putting a DLR sensor on a live 220 kV line by drone in under 90 seconds is a lovely piece of engineering. With National Grid's 585 km rollout and new lines elsewhere in Europe, I imagine the electronics team has a full plate of sensors to build, certify and support.

I'm the CEO of CoreFragment. We design low-power sensor hardware and firmware (STM32, Nordic, NB-IoT, secure OTA) under NDA with full IP transfer.

If extra hands on the next Sense hardware would help, I'd be happy to talk. Or a casual chat about line-mounted sensor design works too.

Not relevant? Reply 'no' and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A sensor on a remote span will lose its link sooner or later. What it does in the gap (buffer, back off, reconnect without draining power) decides whether the operator trusts the data. We wrote up how we handle it: corefragment.com/blog/handle-mqtt-connection-loss

Might be useful for the next field batch.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A different angle: we built an access-control system with real-time monitoring, where devices in the field report status to the cloud as it happens. If a Sense variant, a cost-down respin or a BlueBOX update is waiting for engineering time, we can take it as a fixed-scope project with all design files handed over.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If electronics capacity is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product work (drone-installed DLR sensor), not money. No amount, round or investor anywhere.
- [x] Specific to Ampacimon: Sense, 220 kV drone install, National Grid 585 km.
- [x] Claims trace to accounts/ampacimon.md or CLAUDE.md; EU opt-out line included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: the drone install itself was 2025-05 (used as appreciation); the trigger is the National Grid contract (2026-04-30). Sense X power source, radio and chips are unverified, so the email names our stack. "Elsewhere in Europe" refers to the Winter Wind lines (Tomislavgrad).
