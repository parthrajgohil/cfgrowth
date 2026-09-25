# CoreFragment Growth System

This repo runs CoreFragment Technologies' sales & marketing agents. The single goal:
**generate qualified leads for CoreFragment's product development services.**

> Company facts below were drafted from corefragment.com on 2026-09-23.
> Items marked `TODO(CEO)` need confirmation or input from Parthraj.

**Setup status, decisions and next steps live in `STATUS.md`.** Read it at the start
of any setup or infrastructure work, and update it when a step or decision changes.

## Hard rules (never break these)

1. **Nothing leaves this machine without human approval.** Never send an email, reply,
   post, comment, message, or enroll anyone in a Saleshandy sequence. Never create,
   update, or delete a CRM record. Prepare a draft instead and ask.
   **One exception (CEO decision, 2026-09-24):** agents may post Teams messages,
   without asking, to the 1:1 chat with parthraj@corefragment.com, and only there
   (lead notifications). The approval gate enforces this by chat ID and blocks every
   other Teams write.
   **Second exception (CEO decision, 2026-09-25):** agents may *create* HubSpot
   companies, contacts and notes without asking (max 10 per call, after checking for
   duplicates). Updating existing records, and anything involving deals, still needs
   approval. Email reveals (Saleshandy, then Apollo as fallback) are allowed only for
   leads the CEO has approved (work email only, max 10 a day across both, capped by
   the gate). Agents never
   add prospects to sequences or start them.
2. Drafts go in `drafts/`; account research goes in `accounts/`. Tell the human where
   the file is and what decision you need.
3. Never invent facts: no made-up clients, metrics, certifications, or case studies.
   Only cite what is listed in this file or on corefragment.com. Our case studies mostly
   describe capabilities, not measured outcomes, so do not put numbers on results.
4. Never name a client. Case studies are anonymized ("a US healthcare company").
5. Personal data about prospects: only business-relevant, publicly available info
   (role, company, public posts). No personal emails or phone numbers scraped from
   non-business sources.
6. Keep resource use low. This is an 8GB Mac mini: don't start background sessions
   yourself, don't run heavy local builds, and keep at most 3 Claude sessions running.

## Company

- **Name:** CoreFragment Technologies Private Limited, founded 2015
- **HQ:** A/303, Shapath Hexa, SG Highway, Ahmedabad 380060, India
- **Contact:** info@corefragment.com · +91 79 4007 1108 · https://corefragment.com
- **CEO / Founder:** Parthraj Gohil (10+ years in embedded/IoT product engineering)
- **Tagline:** "Where Every Product Can be Engineered"
- **Positioning:** End-to-end product development, from hardware and firmware
  to cloud and apps. One partner owns the whole IoT stack, so the client has a single
  point of accountability.
- **Proof points:** 10+ years · 110+ projects · clients in 10+ countries (confirmed by
  the CEO, 2026-09-25). **Never state team size** in outreach.
- **Commercial promises:** full IP ownership transferred to the client, NDA by default,
  complete source code and design files delivered. "Product thinking before development":
  we start with feasibility and architecture.
- **Engagement models:** fixed-price, time & materials, and dedicated team (all three).
  TODO(CEO): typical project size, rate bands, minimum deal size. Don't quote prices.

## Services

1. **Embedded hardware:** PCB design (multilayer, high-speed, wearable), BOM
   optimization, power design, BMS.
2. **Embedded software / firmware:** custom firmware, BSPs, device drivers,
   bootloaders, OTA architecture, secure boot (hardware root of trust, TrustZone),
   low-power / battery-life engineering, HIL testing, CI/CD, embedded Linux and kernel
   customization, MISRA C.
3. **IoT full-stack:** device → connectivity → cloud → data pipeline → apps.
4. **Mobile apps:** Android, iOS, cross-platform; BLE companion apps for devices.
5. **Cloud & web apps:** IoT dashboards, real-time data (WebSocket/MQTT), full-stack web.
6. **AI/ML** (added 2023): RAG chatbots, computer vision (defect detection), LLM
   selection and quantization, edge AI / voice AI in IoT.
7. **Product re-engineering:** improve or cost-reduce existing products.

## Technology we can credibly claim

- **MCUs/SoCs:** STM32, ESP32/ESP8266, Nordic nRF52, NXP i.MX RT, Silicon Labs,
  Microchip PIC32, TI CC-series, Quectel modules, Raspberry Pi, Laird BLE modules
- **RTOS/OS:** FreeRTOS, Zephyr, ThreadX, bare-metal, embedded Linux, OpenWrt, AOSP
- **Connectivity:** BLE, Zigbee, Matter, NB-IoT, MQTT, Modbus, OCPP, TLS/DTLS
- **Cloud:** AWS (IoT), Azure IoT, GCP, Terraform
- **Web/backend:** React, Next.js, Node.js, NestJS, Python (FastAPI, Django, Flask),
  Laravel; PostgreSQL, MongoDB, InfluxDB, TimescaleDB
- **AI:** LangChain, LlamaIndex, Ollama, TensorFlow, computer vision
- **Healthcare:** HL7 FHIR, HIPAA-aware design

## Priorities

Set by the CEO on 2026-09-25. Agents should put most of each day's leads (about 4 in 5)
into the **primary** rows, and use the rest to explore the secondary ones.

| Priority | Service line | Target industries | Target regions | Notes |
|------|--------------|-------------------|----------------|-------|
| Primary | Embedded firmware | Healthcare / medical; Industrial IoT | USA, Europe (EU + UK) | Lead angle for device makers |
| Primary | Hardware / PCB | Healthcare / medical; Industrial IoT | USA, Europe (EU + UK) | Incl. BMS, power, re-engineering / cost-down |
| Secondary | IoT full-stack | Any industry adding a connected product (see ICP, segment 2) | USA, Europe | Natural angle for non-tech companies |
| Secondary | Mobile / cloud apps | As above | USA, Europe | Usually part of a device project |
| Secondary | AI/ML | Healthcare, industrial | USA, Europe | Edge AI / CV tied to devices first |

**IoT isn't limited to one industry** (CEO): any company may need a connected product,
for example a construction company tracking its tools, or a tyre maker or dealer monitoring
tyre health. Treat "Industrial IoT" broadly: construction, logistics, automotive
aftermarket, agriculture, energy, facilities, retail operations.

Website industries for reference: Healthcare / medical wearables · Automotive & EV
charging · Industrial IoT & automation · Home automation · Smart wearables · Consumer
electronics.

## Ideal customer profile

Company size 10–500 employees in both segments. Regions: USA and Europe (EU + UK).

**Segment 1: device makers.** Hardware or connected-product companies building or
scaling a device and short on embedded/IoT engineers.
- **Who buys:** CTO, VP/Head of Engineering, Head of Product, or founder (usually the
  founder at startups).
- **Triggers:** recently funded; hiring firmware/embedded engineers (so they need
  capacity); launching a new device; moving from a prototype to production; a
  certification push (medical, OCPP); migrating RTOS (FreeRTOS → Zephyr); nRF/BLE
  issues; an end-of-life chip.

**Segment 2: traditional companies adding a connected product.** No in-house electronics
team, so they need the whole stack from one partner (e.g. construction tool tracking,
tyre-health monitoring, asset or fleet tracking, remote equipment monitoring).
- **Who buys:** Head of Product / Innovation / Digital, COO, CTO/CIO, or the owner/MD.
- **Triggers:** an announced digital/IoT or "smart product" initiative; innovation or
  IoT hires; a pilot or trade-show demo; customer demand for monitoring or tracking;
  regulation needing data (safety, emissions, compliance); a competitor launching a
  connected product.
- **Angle:** IoT full-stack with firmware and hardware underneath; "one accountable
  partner", and full IP ownership for a company new to electronics.

**Poor fit:** pure software/SaaS with no device component (unless it's AI/ML work);
companies that want only staff augmentation at the lowest rate; defense or
export-controlled work.

## Case studies (anonymized; link these, don't embellish)

| Case study | Client | Stack | URL |
|---|---|---|---|
| BLE smart glucometer: firmware + Android/iOS apps | US healthcare org | BLE, Laird, Keil | /case-study/smart-glucometer |
| Smart diabetes monitoring | Healthcare | | /case-study/smart-diabetes-monitoring |
| Connected health monitoring hub + app | Healthcare | Mobile, cloud | /case-study/health-monitoring-hub |
| BLE OBD device + connected app | Automotive | BLE, mobile | /case-study/smart-obd-device |
| CNC drilling machine automation (HMI) | European industrial automation co. | Raspberry Pi, Arduino, Flask | /case-study/industrial-cnc-drilling-machine-automation |
| Access control with real-time monitoring | Automation | Cloud | /case-study/access-control-system |
| Connected school attendance system | Automation | | /case-study/smart-school-attendance-system |
| PCB defect detection with computer vision | AI/ML | CV, ML | /case-study/object-detection-of-pcb-faults-using-ml |
| RAG chatbot (500 docs) | European enterprise | LangChain, LlamaIndex, Ollama, AWS | /case-study/rag-chatbot-development |

All URLs are on https://corefragment.com. Only these case studies may be referenced,
and no client references are available (CEO, 2026-09-25).

## Content library

The site has ~95 blog posts at https://corefragment.com/blog/<slug>. Use them as proof
of expertise in outreach and as seeds for LinkedIn posts. Strong outreach hooks:
`esp-vs-nordic`, `migration-from-freertos-to-zephyr`,
`design-ble-devices-for-crowded-rf-environments`, `handle-mqtt-connection-loss`,
`outsourcing-decision-for-device-driver-development`, `design-custom-battery-management-system`,
`iomt-development-services-cost-breakdown`, `iot-app-development-cost`,
`ocpp-compliance-importance`, `medical-wearable-device-development-challenges-and-fix`,
`computer-vision-for-manufacturing-quality-control`, `how-to-choose-right-llm`.

## Tools & workflow

- **Outreach sending:** Saleshandy (cold email sequences). Agents prepare
  prospects and copy plus an import CSV (`drafts/saleshandy/`); a human loads and
  launches campaigns. Saleshandy Lead Finder (`sage_search`, free) is also a lead
  source; email reveals (`enrich_contacts`, ~1 credit) only for approved drafts.
- **Apollo (second email source):** free people search for reachability; work-email
  reveal (`apollo_people_bulk_match`, ~1 credit) only when Saleshandy has no email for an
  approved lead. Apollo's sending, sequences and purchases are blocked by the gate.
- **Email & files:** Microsoft 365 (Outlook, OneDrive). Teams: lead alerts to the CEO.
- **CRM:** HubSpot. Every A/B lead gets a Company + research Note + "DRAFT FOR REVIEW"
  Note; a Contact is created once its email is revealed. `pipeline/leads.csv` is
  legacy (human-only).
- **Lead stages:** the HubSpot company property **CF lead stage** (`cf_lead_stage`) is
  the source of truth. Agents set only New, Ready to import, No email found, In
  sequence, Replied (the gate enforces this). The CEO sets On hold, Approved, Needs
  edit, Meeting, Won, Lost, Archived.
- **Lead flow:** daily run (09:17) → New → CEO reviews in HubSpot and changes the stage
  → hourly run (09:03–23:03 IST, weekdays) handles Approved (email reveal, HubSpot contact,
  Saleshandy CSV → Ready to import / No email found), Needs edit (revise → New), and
  watches Saleshandy for replies → CEO imports the CSV and launches.
- **LinkedIn touch:** leads with no email get a drafted connection note, InMail and
  after-accept message (hourly run → Teams). The CEO sends them himself; HubSpot field
  **CF LinkedIn touch** tracks it (agents set only "To send"). Never automate LinkedIn.
- **LinkedIn content engine:** Mon/Wed/Fri 11:47 IST, one company-page post (text +
  visual/carousel/video brief + first comment + reshare line) is sent to the CEO on Teams
  to copy and post (`scripts/linkedin-content.md`, log in `drafts/linkedin/index.md`).
- **Writing style:** always use the `cf-voice` skill; use `cold-email` and
  `linkedin-post` for those formats.

## Repo layout

- `STATUS.md`: setup status, decision log, next steps
- `accounts/<company-slug>.md`: one research brief per account
- `drafts/email/`, `drafts/linkedin/`: content awaiting human review
- `pipeline/leads.csv`: lead list (human-maintained)
- `.claude/agents/`: subagents · `.claude/skills/`: writing style
- `scripts/`: session helpers, headless job prompts (`daily-prospecting.md`, `hourly-leads.md`) · `launchd/`: LaunchAgents
- `drafts/saleshandy/<date>.csv`: import files · `drafts/leads/<date>.md`: daily + hourly run logs
