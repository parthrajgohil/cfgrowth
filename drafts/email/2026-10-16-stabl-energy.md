---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: stabl-energy
recipient: Julian Schneider, Director of Engineering (email: TO BE FILLED BY HUMAN)
sources: [accounts/stabl-energy.md, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation, https://corefragment.com/blog/design-custom-battery-management-system]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** STABL Energy GmbH · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/352965187266) · brief: `accounts/stabl-energy.md`
- **Website:** https://stabl.com · **News:** https://stabl.com/en/company/press/ · **LinkedIn:** https://www.linkedin.com/company/stablenergy
- **HQ:** Munich, DE · **Founded:** 2019 (unverified) · **Size:** 80+ employees
- **Funding:** EUR 15M (2023-08, Nordic Alpha Partners) after a EUR 4.5M seed (not for use in emails)
- **Trigger:** open Firmware Engineer + Systems Engineer roles (listed 2026-10-16); 50 MWh milestone 2026-09-23; Austria entry 2026-07-20
- **Segment:** 1 (industrial device maker: battery storage / power electronics)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Julian Schneider (**primary**) | Director of Engineering | unverified | 292440408 | 689d97602b48d30001b3b225 (has email) | [570756212426](https://app.hubspot.com/contacts/247517534/record/0-1/570756212426) |
| Gregor Sc***t | Head of Engineering | unverified | not checked | 5f530a251cbb1300010a9702 (has email; masked) | not created |
| Nam Truong | CEO & co-founder | unverified | not checked | 60ca92199568f40001e3bb13 (has email) | [570717460180](https://app.hubspot.com/contacts/247517534/record/0-1/570717460180) |

## Subject options
1. module-level firmware capacity
2. STABL firmware role
3. inverter firmware CI

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Controlling every battery module individually, so mixed chemistries and ageing packs can share one system, is a clever way around the weakest-cell problem. With 50 MWh now running and a firmware seat open, I imagine release and test work is under real pressure.

I'm the CEO of CoreFragment; we write firmware and design electronics for industrial devices, including battery management and power design, under NDA with full IP transfer.

If extra hands on firmware or HIL/CI setup would help while you hire, I'd be happy to talk. Or if you'd just enjoy a casual chat about module-level battery control, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

We wrote down what we check first when designing a custom BMS: cell balancing strategy, fault paths and how the firmware proves the pack is safe. Some of it maps onto module-level control: corefragment.com/blog/design-custom-battery-management-system

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A different angle: a hardware-in-the-loop rig that replays module faults on every firmware commit catches the bugs that only show up on site. We set up HIL and CI around embedded code for industrial machines, such as automation for a European CNC maker. Worth a look for your release pipeline?

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If the firmware seat is filled, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their technology (module-level control), not money. No funding anywhere.
- [x] Specific to STABL: module-level inverter, mixed/second-life batteries, 50 MWh milestone, open firmware seat.
- [x] Claims trace to accounts/stabl-energy.md or CLAUDE.md (BMS/power design services, CNC automation case study, NDA + IP).
- [x] ~100 words; one CTA; no banned words. EU recipient: opt-out line included.
- [ ] Human: "release and test work is under pressure" is inferred from the job post (CI, test pipelines, release processes). A German version may land better (your call).
