# LinkedIn post: 2026-11-02 (company page)

- **Slot:** Monday, engineering insight
- **Pillar:** Engineering decisions / certification (EV charging, OCPP 1.6J → 2.0.1, security and OTA reaching the hardware)
- **Source:** https://corefragment.com/blog/ocpp-compliance-importance (why OCPP matters commercially: multi-vendor sites, billing audit trail, remote monitoring, incentive eligibility). Technical points come from the public OCPP 2.0.1 specification (Open Charge Alliance): not backward compatible with 1.6; TransactionEvent replaces Start/StopTransaction, with the transaction ID created by the charger; device model (components/variables) replaces configuration keys; three security profiles, profile 3 = TLS with client-side certificates, certificate renewal over OCPP (SignCertificate / CertificateSigned); UpdateFirmware carries a signing certificate and signature.
- **Status:** draft for CEO review

## Hooks

- **A (used below):** Moving a charger from OCPP 1.6J to 2.0.1 / isn't a firmware update. Here is why ->
- **B:** Your charger passed every OCPP 1.6J test. / The next tender asks for 2.0.1.

## Post

Moving a charger from OCPP 1.6J to 2.0.1
isn't a firmware update. Here is why ->

2.0.1 isn't backward compatible with 1.6J.

StartTransaction and StopTransaction become TransactionEvent, and the charger now creates the transaction ID itself. Configuration keys become a device model of components and variables.

That's a rewrite of the OCPP layer, not a patch. But it's still software.

The part that reaches the hardware is security.

2.0.1 defines three security profiles. Profile 3 uses TLS with a client certificate. Choose it, and every charger needs its own private key, kept safe for years and renewed over the air.

Signed firmware updates add more: a bootloader that checks the signature, and flash with room for two images so a failed update can fall back.

So the real questions land on the board:
- Where does the private key live: a secure element, or protected storage in the MCU?
- Is there RAM and flash for TLS next to everything else?
- Can the charger roll back if an update fails halfway?

Answer them after layout freeze and you're looking at a board respin.

If 2.0.1 is on your roadmap, choose the chip, memory and key storage for it now, even if you ship 1.6J first.

#OCPP #EVCharging #EmbeddedSystems

(~215 words)

## First comment

Why OCPP compliance matters beyond the protocol itself: multi-vendor sites, billing disputes, remote monitoring and incentive eligibility. https://corefragment.com/blog/ocpp-compliance-importance

## Mentions

@Open Charge Alliance (publisher of OCPP; the post is about their 2.0.1 spec).

## Visual brief

One 1200×1500 image. Headline "OCPP 2.0.1 starts / on the PCB" (second line in blue), subhead "What changes from 1.6J, and where it lands".
Four cards: TRANSACTIONS (TransactionEvent; firmware: the charger creates the transaction ID), CONFIGURATION (device model;
firmware: new data model), SECURITY PROFILE 3 (highlighted orange: TLS with a client certificate; board: a private key kept
safe for years), FIRMWARE UPDATE (signed updates; board: flash for two images and a fallback). Takeaway with a blue bar:
"Pick the chip, memory and key storage for 2.0.1 now, even if you ship 1.6J first."

- SVG: `drafts/linkedin/images/2026-11-02-ocpp-201-starts-on-pcb.svg`
- PNG (after render): `2026-11-02-ocpp-201-starts-on-pcb.png` in OneDrive "CF LinkedIn images"

**Alt text:** Four cards titled "OCPP 2.0.1 starts on the PCB" show what changes when a charger moves from OCPP 1.6J to 2.0.1. Transactions and configuration are firmware changes, while security profile 3 (a private key per charger) and signed firmware updates (flash for two images) reach the hardware.

## Best time to post

Monday 12:30–14:00 IST (Europe lunchtime; EV charging audience is strongest in Europe).

## Reshare comment for Parthraj's profile

Most OCPP 2.0.1 conversations start with the protocol. The expensive surprises usually sit on the board: where the key lives, and whether there's flash for two images.
