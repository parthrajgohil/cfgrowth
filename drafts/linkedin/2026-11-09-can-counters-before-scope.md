# LinkedIn post: 2026-11-09 (company page)

- **Slot:** Monday, engineering insight
- **Pillar:** Engineering decisions / prototype-to-production pitfalls (intermittent CAN bus faults in industrial and vehicle devices; firmware error logging)
- **Source:** https://corefragment.com/blog/debug-can-bus-communication-issues (Parthraj Gohil): collect evidence before swapping parts; TEC +8 per transmit error, REC +1 per receive error, −1 per good frame; counters rising on one node vs all nodes; log timestamp, TEC, REC, LEC and bus state in a ring buffer, read over debug UART or a diagnostic CAN frame; errors clustering with motor/relay switching = noise or ground shift, temperature = oscillator drift or marginal sample point, vibration = connector/harness. Bus-off above 255 (TEC) is from the CAN standard (ISO 11898-1).
- **Status:** draft for CEO review

## Hooks

- **A (used below):** Your CAN node drops off the bus once a day. / Don't swap the transceiver yet. Here is why ->
- **B:** A CAN fault that comes and goes / is the most expensive kind to guess at.

## Post

Your CAN node drops off the bus once a day.
Don't swap the transceiver yet. Here is why ->

Intermittent CAN faults get expensive when the team changes parts at random. New transceiver, new cable, new termination. The fault comes back next week.

The CAN controller is already telling you where to look.

Every node keeps two error counters. A failed transmit adds 8 to TEC, a failed receive adds 1 to REC, and each good frame takes 1 off. Let TEC pass 255 and the node goes bus-off.

So read them on every node:
- Climbing on one node: look at that node's transceiver, bit timing or sample point.
- Climbing on all nodes: look at what's shared, the wiring, termination or outside noise.

Then add time. Log a timestamp with TEC, REC, the last error code and the bus state into a ring buffer, and read it out over UART or a diagnostic frame.

Errors that cluster when a motor or relay switches point to noise or a ground shift. Errors that follow temperature point to clock drift or a marginal sample point. Errors that follow vibration point to a connector.

Only then pick up the scope.

Build that error log into the firmware before the first field trial. It's the cheapest debugging tool you'll ever ship.

#CANbus #EmbeddedSystems #IndustrialIoT

(~215 words)

## First comment

The full checklist, with waveform checks, error codes on STM32 bxCAN, RX FIFO overruns and a bus-load table: https://corefragment.com/blog/debug-can-bus-communication-issues

## Mentions

None.

## Visual brief

One 1200×1500 image. Headline "Read the counters / before the scope" (second line in blue), subhead "Where an intermittent CAN fault lives".
Part 1, "Which nodes are counting errors?": a box "Error counters rising (TEC / REC)" splitting into two cards, ON ONE NODE (that node: transceiver,
bit timing, sample point) and ON EVERY NODE (what's shared: wiring, termination, outside noise). Part 2, "When do the errors cluster?":
three rows with arrows: motor or relay switches → noise, ground shift; temperature changes → clock, sample point; vibration →
connector, harness. Takeaway in a tinted box with an orange bar: "Log time, TEC, REC, error code and bus state before the first field trial."

- SVG: `drafts/linkedin/images/2026-11-09-can-counters-before-scope.svg`
- PNG (after render): `2026-11-09-can-counters-before-scope.png` in OneDrive "CF LinkedIn images"

**Alt text:** A diagram titled "Read the counters before the scope" shows how to locate an intermittent CAN bus fault. Error counters rising on one node point to that node's transceiver or bit timing, rising on every node point to shared wiring or noise, and errors clustered around motor switching, temperature or vibration point to noise, clock drift or a connector.

## Best time to post

Monday 12:30–14:00 IST (Europe lunchtime; industrial and vehicle-electronics audience is strongest in Europe).

## Reshare comment for Parthraj's profile

The intermittent CAN faults I've seen cost the most weren't the hard ones. They were the ones where nobody had logged the error counters, so every fix was a guess.
