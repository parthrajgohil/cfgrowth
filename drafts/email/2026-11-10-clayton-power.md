---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: clayton-power
recipient: Haris Hujic, CTO (email: TO BE FILLED BY HUMAN)
sources: [accounts/clayton-power.md, https://www.claytonpower.com/products, https://corefragment.com/blog/design-custom-battery-management-system, https://corefragment.com/case-study/smart-obd-device]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Clayton Power · [HubSpot 363216449245](https://app.hubspot.com/contacts/247517534/record/0-2/363216449245) · brief: `accounts/clayton-power.md`
- **Website:** https://www.claytonpower.com · **News:** News & Blog on claytonpower.com · **Careers:** jobindex.dk / jobbank.dk · **LinkedIn:** https://www.linkedin.com/company/clayton-power
- **HQ:** Odense, Denmark · **Founded:** 2000 · **Size:** 80+ employees (early 2026)
- **Funding:** C.W. Obel 30% minority stake (2026-01-07), terms undisclosed (not for use in the email)
- **Trigger:** LPS II 1100 launched 2026-09-17; "built for the electric fleet" blog 2026-10-21 → A
- **Segment:** device maker (segment 1); primary row (hardware/BMS/power for industrial IoT, broadly: fleet vans)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Haris Hujic (**primary**) | CTO | not found | 325096847 | 627cef1c45a29d000159a032 (has email) | [589954013901](https://app.hubspot.com/contacts/247517534/record/0-1/589954013901) |
| Tom St***o | COO | not found | not checked | 54a5187b7468693b8c5f8e7c (has email) | — |

HubSpot notes: 418561767116 (research), 418626070223 (draft).

## Subject options
1. LPS II 1100 firmware
2. BMS for electric-fleet vans
3. Clayton Power R&D capacity

---

## Email 1 (day 0), ~105 words

Hi {{First Name}},

I saw the LPS II 1100 launch in September: one unit that gives a van 230 V for tools and 12 V for warning lights, and keeps going with the engine off. Fitting the battery, inverter and charging into one compact, vehicle-safe box is real engineering.

With the push into electric fleets and a growing range, I imagine your R&D team has more BMS and converter work than hands.

I'm Parthraj, CEO of CoreFragment. We design BMS and power hardware, write the firmware behind it and build companion apps, with full source and IP handed over.

If extra capacity on the next model would help, I'd be glad to talk. Or happy to have a casual chat about BMS design for vehicle-mounted packs.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~60 words

Hi {{First Name}},

A vehicle alternator is a messy charger: voltage swings, cold starts and long idle periods all land on the BMS. We wrote up how we approach custom BMS design: https://corefragment.com/blog/design-custom-battery-management-system

If any of it matches what you're seeing on the LPS II, happy to compare notes.

Parthraj

---

## Follow-up 2 (day 8), ~60 words

Hi {{First Name}},

A different angle: data. Fleet managers increasingly want battery state and usage per van, not just a working socket. We built a BLE OBD device and its connected app for an automotive client, so the device-to-app path is familiar ground: https://corefragment.com/case-study/smart-obd-device

If the Go app or fleet reporting is on your list, we could help there too.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If R&D capacity is covered for now, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product launch (LPS II 1100, September). No funding, round or investor anywhere.
- [x] Specific to Clayton Power: 230 V + 12 V in vans, works with the engine off, electric-fleet positioning.
- [x] Claims trace to CLAUDE.md (BMS, power design, firmware, BLE companion apps, full IP) and the brief; case study and blog are on the approved list.
- [x] ~105 words; one CTA; no banned words; EU opt-out line included.
- [ ] Human: "more BMS and converter work than hands" is our inference (thin R&D in Apollo; the 2025 firmware post has expired). The alternator-charging points in follow-up 1 are general engineering, not their known issues. Haris Hujic's CTO title comes from Saleshandy/Apollo and a search snippet of their Danish management page (English page layout was ambiguous).
