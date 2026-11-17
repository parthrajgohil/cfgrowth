---
stage: in_sequence          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: blue-arbor-technologies
recipient: Alex Vaskov, Co-Founder & CTO <alexvaskov@bluearbortech.com>
saleshandy_sequence: 2dP2LNDLzZ
sources: [accounts/blue-arbor-technologies.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix, https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments]
---

## Lead info
- **Stage:** ready_to_import (source of truth: HubSpot "CF lead stage")
- **Company:** Blue Arbor Technologies · [HubSpot 359115214526](https://app.hubspot.com/contacts/247517534/record/0-2/359115214526) · brief: `accounts/blue-arbor-technologies.md`
- **Website:** https://bluearbortech.com · **News:** Business Wire · **LinkedIn:** not verified
- **HQ:** Grass Lake, Michigan, USA · **Founded:** unverified (U-M spin-out) · **Size:** small (4 in Apollo)
- **Funding:** Series A USD 10.5M (2026-10-28). Not for use in the email.
- **Trigger:** second-in-human ESU procedure; IDE studies and implantable ISU development starting (2026-10-28) → A
- **Segment:** device maker (segment 1); primary row (healthcare, firmware + hardware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Alex Vaskov (**primary**) | Co-Founder & CTO | not verified | not checked (API 400) | 54a4e7957468693b8ca4b06c (has email) | [583410249465](https://app.hubspot.com/contacts/247517534/record/0-1/583410249465) |
| Paul Cederna | Co-Founder & President | not verified | not checked | 54a46bdd74686932099b3046 (has email) | — |

## Subject options
1. RESTORE sensing unit
2. ESU to implant
3. low-power nerve interface

---

## Email 1 (day 0), ~100 words

Hi {{First Name}},

Congratulations on the second RESTORE External Sensing Unit procedure in Vienna. Picking up clean motor signals from nerve grafts and sending them wirelessly to a prosthetic hand is demanding embedded work. With the IDE studies ahead and a fully implantable unit now starting, power, size and firmware reliability all get harder.

I'm Parthraj, CEO of CoreFragment. We build firmware and hardware for medical wearables, including the BLE firmware and apps for a US healthcare company's glucometer, under NDA with full IP transfer.

If extra hands on the ESU or the implantable unit would help, I'd be happy to talk. Or if you'd enjoy a casual chat about low-power wireless medical devices, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

A wearable that streams to a prosthesis has to stay connected in places full of phones, Wi-Fi and earbuds. We wrote up how we design radio links for that: corefragment.com/blog/design-ble-devices-for-crowded-rf-environments. Some of it may apply to the ESU link as studies move to more sites.

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A different angle: verification. IDE studies mean documented firmware, repeatable test rigs and traceable changes. We set up hardware-in-the-loop testing and CI for embedded medical firmware, so a small team can ship changes with confidence. Happy to show how we'd structure it.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the RESTORE engineering is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their clinical milestone, not money. No funding amount, round or investor in the emails.
- [x] Specific to Blue Arbor: RESTORE, ESU, Vienna, nerve grafts, implantable unit.
- [x] Claims trace to the brief or CLAUDE.md (glucometer case study, HIL/CI, BLE blog, NDA + IP).
- [x] ~100 words; one CTA; no banned words. US: no opt-out line needed.
- [ ] Human: "power, size and firmware reliability all get harder" is our inference. The ESU's radio is not public; follow-up 1 assumes a radio link similar to BLE without saying so. Check whether implant work fits our scope before approving.
