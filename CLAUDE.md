# CoreFragment Growth System

This repo runs CoreFragment Technologies' sales & marketing agents. The single goal:
**generate qualified leads for CoreFragment's product development services.**

> Company facts below were drafted from corefragment.com on 2026-09-23.
> Items marked `TODO(CEO)` need confirmation or input from Parthraj.

## Hard rules (never break these)

1. **Nothing leaves this machine without human approval.** Never send an email, reply,
   post, comment, message, or enroll anyone in a Saleshandy sequence. Never create,
   update, or delete a CRM record. Prepare a draft instead and ask.
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
- **Proof points:** 10+ years · 110+ projects · clients in 12+ countries (site
  also says "10+"; use 12+). TODO(CEO): confirm numbers and team size.
- **Commercial promises:** full IP ownership transferred to the client, NDA by default,
  complete source code and design files delivered. "Product thinking before development":
  we start with feasibility and architecture.
- TODO(CEO): engagement models (fixed-price / T&M / dedicated team), typical
  project size, rate bands, minimum deal size.

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

TODO(CEO): rank the service lines, industries and regions. Until you do, agents
should treat all of the ones below as equal and **not** guess a ranking.

| Rank | Service line | Target industries | Target regions | Notes |
|------|--------------|-------------------|----------------|-------|
| ?    | Embedded firmware | | | |
| ?    | IoT full-stack | | | |
| ?    | Hardware / PCB | | | |
| ?    | Mobile / cloud apps | | | |
| ?    | AI/ML | | | |

Industries on the website: Healthcare / medical wearables · Automotive & EV
charging · Industrial IoT & automation · Home automation · Smart wearables · Consumer
electronics.

## Ideal customer profile (draft, pending the priority table)

- **Who buys:** CTO, VP/Head of Engineering, Head of Product, or founder at a hardware
  or connected-product company. At startups this is usually the founder.
- **Company:** 10–500 employees. Building or scaling a connected physical product.
  Short on embedded or IoT engineers.
- **Triggers:** recently funded; hiring firmware/embedded engineers (so they need
  capacity); launching a new device; moving from a prototype to production; a
  certification push (medical, OCPP); migrating RTOS (FreeRTOS → Zephyr); nRF/BLE
  issues; an end-of-life chip.
- **Poor fit:** pure software/SaaS with no device component (unless it's AI/ML
  work); companies that want only staff augmentation at the lowest rate.
- TODO(CEO): regions to prioritize (site case studies: USA, Europe).

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

All URLs are on https://corefragment.com. TODO(CEO): any case studies not on the site
that we may reference, and any clients willing to act as references.

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
  prospects and copy; a human loads and launches campaigns.
- **Email & files:** Microsoft 365 (Outlook, OneDrive).
- **CRM:** none yet. Until one is connected, `pipeline/leads.csv` is the pipeline,
  and only the human edits it (agents propose changes in their output).
- **Writing style:** always use the `cf-voice` skill; use `cold-email` and
  `linkedin-post` for those formats.

## Repo layout

- `accounts/<company-slug>.md`: one research brief per account
- `drafts/email/`, `drafts/linkedin/`: content awaiting human review
- `pipeline/leads.csv`: lead list (human-maintained)
- `.claude/agents/`: subagents · `.claude/skills/`: writing style
- `scripts/`: session helpers · `launchd/`: LaunchAgent
