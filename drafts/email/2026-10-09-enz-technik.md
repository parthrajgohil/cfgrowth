---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: enz-technik
recipient: Simon Lutz, Head of Business Unit IoT (email: TO BE FILLED BY HUMAN)
sources: [accounts/enz-technik.md, https://corefragment.com/case-study/smart-obd-device, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** enz technik AG · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351555092204) · brief: `accounts/enz-technik.md`
- **Website:** https://www.enz.com · **News:** https://product-news.enz.com/en · **LinkedIn:** unverified
- **HQ:** Giswil, Switzerland · **Founded:** 1985 · **Size:** unverified (~31 in Apollo)
- **Funding:** private, none known
- **Recent news:** 2025-07-01 JetCam 20 · 2025-04-28 MyEnz App · 2025-02-24 camera firmware/app update · 2026-08-11 Rotodrill 2.0 (mechanical)
- **Segment 2:** traditional nozzle maker; the camera nozzle's electronics, firmware, apps and cloud were built by Helbling

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Simon Lutz (**primary**) | Head of Business Unit IoT (Saleshandy: Business Development Manager IoT) | unverified | lead ID 235371711 | 5653da7ba6da98426000907b (has email) | [566865681102](https://app.hubspot.com/contacts/247517534/record/0-1/566865681102) |
| René Riebli | Entwicklungsleiter (Head of Development) | unverified | lead ID 663323603 | 642d71b21c87e80001e025b2 (no email) | [566849778405](https://app.hubspot.com/contacts/247517534/record/0-1/566849778405) |
| Adrian Moos | Deputy CEO (enz group) | unverified | lead ID 586012957 (decision maker) | 6321b8bcdcd40300014344e1 (has email) | none |

## Subject options
1. the next camera nozzle
2. enz camera, generation two
3. sensors in the nozzle

---

## Email 1 (day 0), ~100 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

The enz camera nozzle is a clever idea: the camera rides where the cleaning happens, and the footage lands in MyEnz Cloud, mapped to the manhole. For a nozzle maker, the next generation (longer runtime, sensing, lower cost) is mostly electronics, firmware, app and cloud work.

I'm the CEO of CoreFragment; we build connected products end to end, from the circuit board and firmware to the app and cloud, as one accountable partner. You keep the full IP and source code.

If you're planning the next camera or a sensor nozzle, I'd be glad to talk. Or if you'd just enjoy a casual chat about electronics in harsh places, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Underground there's no signal, so a connected tool has to store everything and upload it cleanly once it's back on the truck, with nothing lost or doubled. We wrote up how we handle that reconnect-and-resend logic: corefragment.com/blog/handle-mqtt-connection-loss

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A short example of the "whole stack" point: for an automotive client we built a BLE OBD device together with its connected app, the hardware, firmware and app as one project with one team. For a nozzle line, the same model means one partner answers for the tool, the app and the cloud.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the connected roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (camera nozzle, MyEnz Cloud), not money. No funding anywhere.
- [x] Specific to enz: nozzle camera, manholes, cloud mapping.
- [x] Claims trace to accounts/enz-technik.md or CLAUDE.md (full-stack positioning, IP ownership, OBD case study). Swiss/European campaign: opt-out included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: **B lead, no dated 2026 electronics trigger**; the next-gen camera or sensor nozzle is our inference. Helbling (a design house) built the first camera system, so there may be an incumbent. Simon's title differs between sources (Head of BU IoT vs Business Development Manager IoT). René Riebli (Head of Development) is the technical alternative. The email is in English; German may land better.
