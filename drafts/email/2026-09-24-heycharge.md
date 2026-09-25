---
type: cold-email
stage: new
account: heycharge
recipient: Chris Cardé, Founder & CEO (email: TO BE FILLED BY HUMAN)
sources: [accounts/heycharge.md, https://corefragment.com/blog/ocpp-compliance-importance, https://corefragment.com/case-study/smart-glucometer]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** HeyCharge · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/348484334304) · brief: `accounts/heycharge.md`
- **Website:** https://www.heycharge.com · **LinkedIn:** https://www.linkedin.com/company/heycharge · **X:** @heychargehq
- **HQ:** Munich, Bavaria, Germany · **Founded:** 2021 · **Size:** 17 (Y Combinator profile)
- **Funding:** BMW i Ventures, Statkraft Ventures, Y Combinator; €2.5M EIC Accelerator grant (Feb 2026)
- **Recent news:** MagicBox with Easee (2026-03-25) · 22 kW AC charger with HUMAX (2026-03-26) · see accounts/heycharge.md sources

| Buyer | Title | LinkedIn | Saleshandy | HubSpot contact |
|---|---|---|---|---|
| Chris Cardé (**primary**) | Founder & CEO | https://www.linkedin.com/in/pilotchris/ | not checked | [558510428902](https://app.hubspot.com/contacts/247517534/record/0-1/558510428902) |
| Robert Lasowski | Co-founder & CBDO | — | not checked | [558510910154](https://app.hubspot.com/contacts/247517534/record/0-1/558510910154) |

## Subject options
1. magicbox firmware
2. efr32 + esp32-s3
3. heycharge engineering capacity

---

## Email 1 (day 0), 99 words

Hi {{First Name}},

I read your post on engineering the internet out of EV charging. An EFR32 multiprotocol
SoC, an EFR32FG23 on sub-GHz, an ESP32-S3 for IP, Modbus over RS-485: we work on that
kind of stack every week.

With MagicBox and the HUMAX charger both landing this year, and a Head of Engineering
search on YC, firmware bandwidth is probably tight.

We write BLE, Zigbee and Modbus firmware on Silicon Labs and ESP32, plus the mobile and
cloud side, under NDA with full IP transfer.

Would a defined workstream help while you hire?

Not relevant? Reply 'no' and I won't follow up.

Parthraj Gohil
Founder & CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), 52 words

Hi {{First Name}},

MagicBox talks OCPP to wallboxes from many vendors, and every vendor's OCPP
implementation has its quirks. We wrote about why compliance testing pays off here:
corefragment.com/blog/ocpp-compliance-importance

How are you testing interop across wallbox brands before the DACH rollout?

Parthraj

---

## Follow-up 2 (day 8), 58 words

Hi {{First Name}},

A different angle: in your architecture the phone is the gateway, so BLE reconnect
behaviour on Android and iOS is part of the product. We built the BLE firmware and
the iOS/Android apps for a US glucometer maker, so we've worked both ends of that link.

Would help on the Flutter SDK side be useful?

Parthraj

---

## Follow-up 3 (day 15), 36 words

Hi {{First Name}},

I don't want to crowd your inbox. If engineering capacity is covered once the new hire
starts, should I close this out? A one-word reply is fine.

Not relevant? Reply 'no' and I won't follow up.

Parthraj

---

## Self-check
- [x] Specific to HeyCharge: the exact MagicBox chips from Chris's own post, MagicBox + HUMAX,
      the Head of Engineering search, OCPP interop, phone-as-gateway. It couldn't go to another company unchanged.
- [x] Claims trace to accounts/heycharge.md or CLAUDE.md (Silicon Labs, ESP32, BLE, Zigbee,
      Modbus, OCPP are all listed). No client named, no numbers on results.
- [x] Email 1 under 110 words, one CTA, no banned words, at most one link per email. EU opt-out included.
- [ ] Human: the YC Head of Engineering post is undated. Check it's still open before you send.
- [ ] Human: "we work on that kind of stack every week" is a capability statement. Soften it if it overstates.
