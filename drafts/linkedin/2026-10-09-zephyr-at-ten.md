# LinkedIn post: 2026-10-09 (Friday)

- **Slot:** Friday, Industry POV (a): news from the last 7 days (Texas Instruments and Infineon upgraded to Zephyr Project Platinum membership, announced 1 Oct 2026; Zephyr's 10th year, Developer Summit in Prague 7–9 Oct). Last Friday (2 Oct) was the people/video slot, so this week is news.
- **Pillar:** Engineering decisions (RTOS trade-offs)
- **Audience:** CTOs / Heads of Engineering at device makers with FreeRTOS + vendor-SDK firmware (medical, industrial IoT), USA + Europe
- **Page:** CoreFragment company page
- **Teams:** sent to the CEO by the unattended run, 2026-10-09 ~11:5x IST (message id 1791526799737).

## Hooks
- **A (used below):** Zephyr turns ten this week. Your chip vendors are betting on it.
- **B:** Still on FreeRTOS and a vendor SDK? This month changed the maths.

## Post

Zephyr turns ten this week. Your chip vendors are betting on it.

On 1 October, Texas Instruments and Infineon moved up to Platinum membership of the Zephyr Project, just before its Developer Summit in Prague.

They join Nordic, NXP, Silicon Labs and Renesas at the top tier.

Here is why that matters if your product runs FreeRTOS on a vendor SDK ->

New silicon increasingly arrives with Zephyr-first support. Nordic's nRF54L parts, for example, live in its Zephyr-based nRF Connect SDK.

So the question is no longer whether to look at Zephyr. It's when.

And the cost of moving is rarely the scheduler. It's everything around it:

Devicetree, Kconfig and west replace the vendor's config tools.

Thread priorities run the other way: in Zephyr, a lower number wins.

The Bluetooth stack changes, so pairing and connection behaviour need re-testing on real phones.

Flash and RAM grow until you trim the defaults.

FreeRTOS is still a good choice for many products. But a migration forced by a new chip, under a launch deadline, is the expensive kind.

Plan the move at your next hardware revision, not in the middle of one.

#Zephyr #EmbeddedSystems #Firmware

## First comment
Our notes on what really changes in a FreeRTOS to Zephyr migration (priorities, devicetree, the BLE stack, memory): https://corefragment.com/blog/migration-from-freertos-to-zephyr

The Zephyr Project's announcement: https://www.zephyrproject.org/zephyr-project-expands-semiconductor-industry-support-as-infineon-technologies-and-texas-instruments-upgrade-to-platinum-membership/

If you're weighing a move and want a second opinion on scope before you commit to a timeline, our firmware team is happy to look. Or if you'd just like a technical chat about Zephyr on your hardware, we're up for that too.

## Hashtags
#Zephyr #EmbeddedSystems #Firmware (already at the end of the post)

## Mention
@Zephyr Project (company page) on "Zephyr Project" in the post. Optional second: @Nordic Semiconductor on "Nordic's nRF54L". No people.

## Visual brief (single image)
- **File:** `drafts/linkedin/images/2026-10-09-zephyr-at-ten.svg` (1200×1500) → rendered to `2026-10-09-zephyr-at-ten.png` in OneDrive "CF LinkedIn images"
- **Headline:** "FreeRTOS to Zephyr: / what really changes", subtitle "Where migration time actually goes"
- **Body:** a five-row before/after comparison, "FreeRTOS + vendor SDK" → "Zephyr": Configuration (vendor tool + headers → Devicetree + Kconfig), Build (IDE project → west + CMake), Thread priority (higher number wins → lower number wins), Bluetooth (vendor BLE stack → new stack: test early, highlighted orange as "Most underestimated"), Flash and RAM (lean by default → trim the defaults).
- **Takeaway bar:** "Plan the move at your next hardware revision, not in the middle of one."
- **Alt text:** "Before-and-after table of a FreeRTOS to Zephyr migration: configuration moves to Devicetree and Kconfig, builds move to west and CMake, thread priority flips so a lower number wins, the Bluetooth stack changes and needs early testing, and memory defaults need trimming. Takeaway: plan the move at your next hardware revision."

## Best time to post
Friday 12:30–14:00 IST (late morning in Europe, while the Prague summit is still in the news). Second best: 18:30–20:00 IST for the US.

## Reshare comment for Parthraj's profile
"Zephyr turned ten this week, and TI and Infineon just joined its top tier. If your product is on FreeRTOS, the useful question now is when to plan the move, not whether."

## Sources (facts checked 2026-10-09)
- Zephyr Project, TI and Infineon upgrade to Platinum (1 Oct 2026, Prague; Summit 7–9 Oct; 10th year): https://www.zephyrproject.org/zephyr-project-expands-semiconductor-industry-support-as-infineon-technologies-and-texas-instruments-upgrade-to-platinum-membership/
- Existing Platinum members incl. Nordic, NXP, Silicon Labs, Renesas (Feb 2026 release): https://www.zephyrproject.org/zephyr-project-welcomes-new-members-february-2026/
- Nordic nRF54L Series / nRF Connect SDK: https://www.nordicsemi.com/Products/nRF54LC10A
- CoreFragment blog (priority reversal, devicetree/Kconfig/west, BLE stack swap, memory defaults): https://corefragment.com/blog/migration-from-freertos-to-zephyr
