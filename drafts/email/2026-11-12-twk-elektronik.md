---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: twk-elektronik
recipient: Ankit Ag***l (surname masked), Head of Software & Technical Program Management (email: TO BE FILLED BY HUMAN)
sources: [accounts/twk-elektronik.md, https://join.com/companies/twk/16909090-entwicklungsingenieur-in-im-bereich-embedded-software, https://corefragment.com/blog/outsourcing-decision-for-device-driver-development, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** TWK-ELEKTRONIK GmbH · [HubSpot 364553280194](https://app.hubspot.com/contacts/247517534/record/0-2/364553280194) · brief: `accounts/twk-elektronik.md`
- **Website:** https://www.twk.de · **Careers:** https://join.com/companies/twk · **LinkedIn:** not verified
- **HQ:** Düsseldorf, Germany (development site Wedel) · **Founded:** 1962 · **Size:** 51–200 ("over 150")
- **Funding:** none; family-owned
- **Trigger:** Embedded Software engineer (STM32, FreeRTOS, CANopen/IO-Link/PROFINET/EtherCAT) open since 2026-04-29, plus a hardware/sensor project lead post → B
- **Segment:** device maker (segment 1); primary row (embedded firmware, industrial IoT / sensors for machine builders)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Ankit Ag***l (**primary**, surname masked) | Head of Software & Technical Program Management | not found | not found | 67596ab6640ba6000125fd84 (has email) | [592190294771](https://app.hubspot.com/contacts/247517534/record/0-1/592190294771) |
| Felix St***h (surname masked) | CEO | not found | not found | 64688b5c0a4d6d0001de502d (has email) | [592179060433](https://app.hubspot.com/contacts/247517534/record/0-1/592179060433) |

HubSpot notes: 420206359237 (research), 420206359238 (draft).

## Subject options
1. STM32 firmware for sensor variants
2. TWK embedded hiring
3. firmware help in Wedel

---

## Email 1 (day 0), ~100 words

Hi {{First Name}},

TWK's inclinometers and encoders, including the SIL2 versions, are the kind of quiet parts machine builders depend on, and that care shows in the firmware.

I noticed the embedded software role in Wedel (STM32, FreeRTOS, CANopen) has been open since April. With many customer-specific variants, an empty seat usually means variant and driver work queuing behind the safety-critical core.

I'm Parthraj, CEO of CoreFragment. We write STM32 and FreeRTOS firmware in MISRA C, with HIL testing and full source handed over under NDA.

If help on non-safety variants or test rigs would free your team, I'd be happy to talk. Or if you'd enjoy a casual chat about sensor firmware, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

Drivers and bus stacks are often the first piece a sensor team considers handing out, because they are well specified and easy to test against the hardware. We wrote down when that makes sense and when it doesn't: https://corefragment.com/blog/outsourcing-decision-for-device-driver-development

Might be useful while the Wedel role stays open.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A closer example: for a European industrial automation company we built the control and HMI layer of a CNC drilling machine (Raspberry Pi, Arduino, Flask): https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation

Machine builders are your customers too, so the integration side of your sensors is familiar ground for us.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the embedded team is fully staffed now, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (inclinometers, encoders, SIL2 versions). No funding anywhere (family-owned).
- [x] Specific to TWK: Wedel role, STM32/FreeRTOS/CANopen, customer-specific variants, safety core.
- [x] Claims trace to CLAUDE.md (STM32, FreeRTOS, MISRA C, HIL testing, full source, NDA) and the brief; we don't claim CANopen, IO-Link or functional-safety experience; blog and case study are on the approved list.
- [x] ~100 words; one CTA; no banned words; EU opt-out line included.
- [ ] Human: buyer surnames are masked in Apollo and nobody at TWK is in Saleshandy, so the email must come from Apollo. "Variant and driver work queuing" is our inference from the open post. The draft is in English; for a German family firm you may prefer a German version.
