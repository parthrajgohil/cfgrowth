# LinkedIn post: 2026-10-14 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (industrial machine HMI)
- **Audience:** CTOs / Heads of Engineering / founders at industrial automation and machine-builder companies in Europe and the US, plus segment-2 companies adding a screen and connectivity to an existing machine (primary: embedded firmware, Industrial IoT)
- **Page:** CoreFragment company page
- **Seed (first comment):** https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation
- **Teams:** sent to the CEO by the unattended run on 2026-10-14 (post + carousel brief in one message: id 1791958832556).

## Hooks
- **A (used below):** Screen on Linux. / Timing on a microcontroller.
- **B:** Your Raspberry Pi can run the machine's screen. / It shouldn't run the motors.

## Post

Screen on Linux.
Timing on a microcontroller. Here is why ->

We built the operator HMI for a CNC drilling machine for a European industrial automation company.

Operators pick the machine make and part number, set 3-axis coordinates, upload files over Wi-Fi and watch the machine work. A Raspberry Pi runs the screen and a Flask backend.

It's tempting to let the same Pi drive the motors. It has GPIO pins, after all.

But standard Linux gives no timing guarantee, and Python adds pauses of its own. A log write, a Wi-Fi interrupt or garbage collection can delay a step pulse. A late pulse can mean a lost step, and a lost step is a hole in the wrong place.

So on machines like this, we split the work:

The Pi handles what people touch: the screen, files, coordinates, network and logs.

Firmware on a microcontroller (or a dedicated motion controller) handles step pulses, limit switches, homing and the watchdog.

A simple serial link joins them. Every command gets an acknowledgement. If the Pi goes silent, the axes stop safely.

And the emergency stop cuts power in hardware. Software only reports it.

Give each processor the one job it's good at.

#IndustrialAutomation #EmbeddedSystems #IIoT

(~200 words, no emoji)

## First comment
The CNC drilling machine HMI project (anonymised): https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation

If you're adding a screen, Wi-Fi or remote monitoring to a machine and want a second opinion on what should run where, we're happy to take a look. Or if you'd just like a technical chat about machine control, we're up for that too.

## Hashtags
#IndustrialAutomation #EmbeddedSystems #IIoT (already at the end of the post)

## Mention
@Raspberry Pi (optional; the Pi is central to the post and the message is "use it for what it's good at", not a criticism).

## Carousel brief (8 slides, 1080×1350 → `2026-10-14-linux-screen-mcu-timing-carousel.pdf`)
Files: `drafts/linkedin/images/2026-10-14-linux-screen-mcu-timing-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "Screen on Linux. / Timing on an MCU." Diagram: Raspberry Pi box (screen, files, Wi-Fi, logs) ↔ orange "serial + ack" link ↔ blue microcontroller box (step pulses, limits, homing).
2. **The project: A CNC drill, an operator HMI.** European industrial automation company; operators pick make/part number, set and read 3-axis coordinates, upload files and code over Wi-Fi, monitor activity. Stack box: HTML/JS screen, Flask, Raspberry Pi.
3. **The temptation: GPIO pins aren't real-time.** Two pulse trains: planned vs under load, with an orange-tinted gap labelled "late: logs, Wi-Fi, GC". "A late pulse can mean a lost step. A lost step is a hole in the wrong place."
4. **1 On the microcontroller: Hard timing goes in firmware.** Step/direction pulses, limit switches and homing, fault handling per axis, watchdog. Runs on bare-metal or FreeRTOS firmware, or a dedicated motion controller.
5. **2 On Linux: The Pi does what people touch.** Operator screen, part numbers/coordinates/job files, Wi-Fi uploads and logs, activity monitoring. "A short pause here goes unnoticed. On a motor axis, it doesn't."
6. **3 The link: Keep the link boring.** Every command acknowledged; MCU owns machine state, Pi only displays it; heartbeat: Pi goes silent → MCU stops the axes safely.
7. **4 Emergency stop: E-stop is wired, not coded.** Diagram E-stop → contactor → motors; dashed "MCU and screen: report only". Note: design to the machine's safety standards, e.g. ISO 13850.
8. **Takeaway: One job for each processor.** Recap Linux / MCU / Link / E-stop; "If the screen freezes, the machine should stop safely, not keep drilling." Orange pill "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "Screen on Linux. Timing on an MCU." showing a Raspberry Pi and a microcontroller joined by a serial link. It explains why step pulses, limit switches and homing belong in microcontroller firmware, the screen and files on Linux, and the emergency stop in hardware.

## Best time to post
Wednesday 12:30–14:00 IST (Europe midday; the case-study client and many machine builders are European). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"A Raspberry Pi is a great machine screen and a poor motion controller. Here is how we split the work on an industrial CNC HMI, and why the e-stop never goes through software."

## Sources (facts checked 2026-10-14)
- CoreFragment case study "Industrial CNC drilling machine automation": European client in home and industrial automation; HMI to set machine make/part number, coordinates, file upload, Wi-Fi code upload, 3-axis measurement, activity monitoring; HTML/CSS/JS standalone HMI, Flask backend, Raspberry Pi drives the machine. The page's FAQ notes Flask is not for hard real-time control and timing-critical work goes to firmware on an Arduino or a dedicated motion controller; its "how we help" section lists fault handling, emergency stop logic, watchdogs, limit switches and homing.
- The post presents the Linux/MCU split as our general approach on machines like this; it does not claim specific project internals beyond the case-study page, and states no results.
- Standard (non-PREEMPT_RT) Linux and CPython give no hard timing guarantees: general, well-known engineering fact.
- ISO 13850: Safety of machinery, emergency stop function, principles for design.
