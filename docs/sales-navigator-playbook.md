# Sales Navigator playbook (hand-off to the growth agents)

Sales Navigator is the CEO's tool. It is **never** connected to or automated by the agents
(LinkedIn's User Agreement). The CEO finds and saves prospects; the agents do the research,
drafting and CRM work from what he hands over.

## One-time setup (≈ 1 hour)

Save each search with **alerts on** (Sales Navigator → search → Save search).

### Account searches (companies)

| Name | Filters | Keywords (Boolean) |
|---|---|---|
| **CF A1: Medical device makers** | Industry: Medical Equipment Manufacturing, Medical Practices (devices) · HQ: United States, European Union, United Kingdom · Headcount: 11–50, 51–200, 201–500 · Department headcount, Engineering: 5–100 | `wearable OR BLE OR bluetooth OR "connected device" OR IoT OR firmware OR "remote monitoring"` |
| **CF A2: Industrial IoT / electronics makers** | Industry: Industrial Machinery Manufacturing, Automation Machinery Manufacturing, Appliances, Electrical and Electronics Manufacturing, Computers and Electronics Manufacturing · HQ, headcount as A1 | `IoT OR sensor OR telemetry OR "condition monitoring" OR "connected product" OR embedded` |
| **CF A3: Traditional companies going connected** (ICP segment 2) | Industry: Construction, Rubber Products / Tires, Truck Transportation, Warehousing, Farming, Agricultural Machinery, Utilities, Facilities Services, Motor Vehicle Parts · HQ, headcount as A1 | `"smart product" OR "connected" OR IoT OR telematics OR "asset tracking" OR "remote monitoring" OR digitalization` |

Add these **spotlight filters** to each (they are the triggers):
- **Company headcount growth** (positive over 6–12 months)
- **Hiring on LinkedIn** (Job opportunities), best if engineering roles are open
- **Recent activities**: *Senior leadership changes in the last 3 months* and *Funding events in the past 12 months*

### Lead searches (people)

| Name | Filters |
|---|---|
| **CF L1: Engineering buyers** | Current title: `CTO OR "VP Engineering" OR "Head of Engineering" OR "Director of Engineering" OR "Head of Hardware" OR "VP Hardware" OR "Head of Firmware" OR "Head of Product"` · Seniority: CXO, VP, Director, Owner/Partner · Account: in your saved account lists (A1/A2) |
| **CF L2: New in role** (strong trigger) | Same titles as L1 · **Changed jobs in the past 90 days** · Geography: US, EU, UK |
| **CF L3: Segment-2 buyers** | Current title: `"Head of Innovation" OR "Director of Innovation" OR "Chief Digital Officer" OR "Head of Digital" OR "Head of Product" OR COO OR "Managing Director"` · Account: in list A3 |
| **CF L4: Active on LinkedIn** | Any of L1–L3 plus **Posted on LinkedIn in the past 30 days** (people who post reply more) |

### Lists
- Account lists: `CF – Medical devices`, `CF – Industrial IoT`, `CF – Connected product (non-tech)`
- Lead list: `CF – To hand off` (the people you send to the agents)

## Twice-weekly routine (Mon + Thu, ≈ 20 minutes)

1. Open **Alerts**: new matches, job changes, funding, hiring spikes on saved accounts.
2. Skim 20–30 accounts; **save 5–10** that look right (device or connected product, 10–500
   people, USA/Europe, a visible reason to talk now).
3. For each, pick the best buyer (L1/L3 titles) and save them to `CF – To hand off`.
4. **Hand them off** (below). The next 09:17 run researches them first.
5. For leads the agents report as "No email found", use your **InMail** credits with the
   InMail the agents drafted (it's in Teams and HubSpot).

## Hand-off format

**Option A: Teams (phone-friendly).** In the 1:1 chat with the growth account, send one
message that starts with `#salesnav`, one lead per line:

```
#salesnav
Acme Medical | acme.com | Jane Doe, VP Engineering | hiring 2 firmware engineers
Bolt Robotics | boltrobotics.io | | new CTO in August
Stein Bau GmbH | steinbau.de | Klaus Stein, Head of Innovation | wants tool tracking
```

**Option B: file.** Create `pipeline/sales-nav-<YYYY-MM-DD>.md` (copy
`pipeline/sales-nav-TEMPLATE.md`) with the same lines.

Fields: `Company | website or domain | person, title (optional) | why / note (optional)`.
Use the company **website**, not Sales Navigator links (the agents can't open those). A public
LinkedIn profile URL (`linkedin.com/in/…`) is fine to include after the person's name.

## What the agents do with it

- They are researched **before** the agents' own prospecting, up to 5 per day; any extra stay
  queued for the next run (`drafts/leads/sales-nav-queue.md` shows the queue).
- Same process as other leads: ICP and fit check, a real trigger with a source, a brief,
  a draft in your voice, a HubSpot company + contacts + notes at **CF lead stage = New**,
  free reachability check (Saleshandy + Apollo), and a Teams alert tagged **[Sales Nav]**.
- A company that doesn't fit is still logged, with the reason, so you get feedback on
  your searches.
