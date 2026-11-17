---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: zappettificio-muzzi
recipient: Michele Mastellari, Responsabile Ufficio Tecnico (Technical Office Manager) (email: TO BE FILLED BY HUMAN)
sources: [accounts/zappettificio-muzzi.md, https://www.muzzi.com/en/corporate-releases/vigilasense-wins-the-technical-evolution-award-at-eima-2026/, https://www.meccagri.it/zappettificio-muzzi-vigilasense-quando-lutensile-parla/, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/case-study/smart-obd-device]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Zappettificio Muzzi · [HubSpot 366632254169](https://app.hubspot.com/contacts/247517534/record/0-2/366632254169) · brief: `accounts/zappettificio-muzzi.md`
- **Website:** https://www.muzzi.com · **News:** https://www.muzzi.com/en/news/ · **LinkedIn:** company page exists (URL not verified)
- **HQ:** Castel Guelfo di Bologna, Italy · **Founded:** 1981 (cooperative) · **Size:** 50–99 (estimate), revenue EUR 18.1M (2024)
- **Funding:** none (cooperative)
- **Trigger:** VigilaSense, EIMA 2026 Technical Evolution award (2026-09-29; shown 2026-11-10/14) → B (a development partner, B4, already exists)
- **Segment:** segment 2 (traditional forge adding a connected product); industrial IoT (agriculture), hardware + firmware

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Michele Mastellari (**primary**) | Responsabile Ufficio Tecnico | not found | 140848683 | 54ec3f357468694311a0946e (has email) | [595134393078](https://app.hubspot.com/contacts/247517534/record/0-1/595134393078) |
| Francesca Raneri | Direttore Commerciale e Marketing | not found | not checked | 634a5f4712873900019e9f17 (has email) | [594984789699](https://app.hubspot.com/contacts/247517534/record/0-1/594984789699) |

HubSpot notes: 423001351886 (research), 423001322222 (draft).

## Subject options
1. VigilaSense hardware
2. when the hoe talks
3. VigilaSense on every implement

---

## Email 1 (day 0), ~100 words

Hi {{First Name}},

VigilaSense is a smart idea: let the vibration of a hoe or ploughshare tell the farmer how much life is left, instead of guessing in the yard. Congratulations on the EIMA award.

Putting it on any implement, standalone or over ISOBUS, raises hardware questions the algorithm doesn't answer: a sealed sensor node that survives the soil, battery life over a season, cost at your volumes, and updates in the field.

I'm Parthraj, CEO of CoreFragment. We design embedded hardware, firmware and apps for connected machines, under NDA with full IP handed over.

If an extra engineering team would help, I'd be happy to talk. Or if you'd enjoy a casual chat about sensing in the field, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Fields are hard on connectivity: one corner has signal, the next has none, and the tractor terminal reboots at lunch. A wear sensor has to store and resend its data without losing hours of work. Our notes on handling dropped links: https://corefragment.com/blog/handle-mqtt-connection-loss

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A related project: we built a BLE OBD device and its companion app for an automotive client, reading machine data and getting it to the phone reliably: https://corefragment.com/case-study/smart-obd-device

Similar to getting VigilaSense readings to a farmer or dealer without an ISOBUS terminal. Happy to compare notes.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If VigilaSense engineering is fully covered with your partners, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (VigilaSense, hoes and ploughshares) and its award. No funding (none exists).
- [x] Specific to Muzzi: VigilaSense, ISOBUS, standalone mode, forged tools.
- [x] Claims trace to CLAUDE.md (hardware, firmware, apps, NDA, full IP) and the brief; blog and case study are on the approved list; no numbers on our results.
- [x] ~100 words; one CTA; no banned words; EU opt-out line included.
- [ ] Human: B grade. VigilaSense was developed with B4 (IIoT/predictive maintenance) and the University of Messina, who may cover the hardware; product status (prototype or shipping) is unknown. Michele Mastellari is a mechanical engineer; Francesca Raneri (commercial director, quoted in the press) is the alternative. An Italian version is likely to land better.
