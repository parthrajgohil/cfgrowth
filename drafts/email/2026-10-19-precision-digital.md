---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: precision-digital
recipient: Scott Ewen, VP of Engineering and Operations (email: TO BE FILLED BY HUMAN)
sources: [accounts/precision-digital.md, https://corefragment.com/case-study/access-control-system, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Precision Digital Corporation · [HubSpot 353644825325](https://app.hubspot.com/contacts/247517534/record/0-2/353644825325) · brief: `accounts/precision-digital.md`
- **Website:** https://www.predig.com · **News:** newsletter "The Indicator" · **LinkedIn:** not verified
- **HQ:** Hopkinton, MA, US · **Founded:** 1974 (unverified) · **Size:** ~40 in Apollo (unverified)
- **Funding:** none found (private, owner-led)
- **Trigger:** new industrial IoT product being launched, development "largely completed by a third party"; IoT Product Specialist post 2026-05-27 (pen testing, ISA 62443 gap analysis, cloud hosting still to do)
- **Segment:** 2-leaning (traditional process-instrument maker adding a connected product; has in-house electronics)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Scott Ewen (**primary**) | VP of Engineering and Operations | unverified | 213536631 | 5fa2952b3a887300015825a2 (has email) | [572282428136](https://app.hubspot.com/contacts/247517534/record/0-1/572282428136) |
| Jeffrey Pe*** | President (surname masked) | unverified | not checked | 5a79f80fa3ae611def9a7f8d (has email) | not created |
| Owen Pe*** | President (surname masked) | unverified | not checked | 57db4abca6da984c18deae82 (has email) | not created |

## Subject options
1. after the IoT launch
2. Precision Digital IoT platform
3. 62443 and field firmware

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Taking decades of panel meters onto a remote-monitoring platform is a big step. Your IoT Product Specialist post says the first version came from an outside developer, with pen testing and a 62443 gap analysis still ahead. That's usually when someone has to own the device firmware, cloud and security fixes for the long run.

I'm the CEO of CoreFragment; we build firmware, cloud and apps for connected industrial devices as one team, under NDA with full source and IP handed over.

If help there would be useful, I'd be happy to talk. Or if you'd just enjoy a casual chat about securing field devices, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

One thing that bites every new remote-monitoring product: what the device does when the connection drops for an hour on a plant floor. We wrote down how we buffer and resend data without losing readings: corefragment.com/blog/handle-mqtt-connection-loss

Might be useful for your field trials.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A different angle: we built an access control system with real-time cloud monitoring end to end, from the device firmware to the dashboard. Having one team own both sides is what keeps security fixes from bouncing between vendors. Would a second opinion on your platform's device side be useful once it's live?

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If the original developer is staying on for the long run, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product move (panel meters → remote monitoring) and the job post, not money. No funding anywhere.
- [x] Specific to Precision Digital: outsourced first version, pen testing, 62443 gap analysis.
- [x] Claims trace to accounts/precision-digital.md or CLAUDE.md (IoT full-stack, access control case study, NDA + IP).
- [x] ~100 words; one CTA; no banned words. US recipient: no opt-out line needed.
- [ ] Human: the job post (2026-05-27) has expired; the platform may already be launched. "Decades" relies on the company's "50 years" claim. Third-party developer's identity is unknown.
