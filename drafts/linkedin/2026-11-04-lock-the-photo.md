# LinkedIn post: 2026-11-04 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (PCB coating inspection with computer vision); AI in devices
- **Audience:** CTOs, Heads of Engineering/Operations and founders at electronics and industrial manufacturers in Europe and the US (anyone running a PCB or assembly line and considering automated visual inspection); secondary AI/ML line tied to hardware
- **Page:** CoreFragment company page
- **Seed (first comment):** https://corefragment.com/case-study/object-detection-of-pcb-faults-using-ml and https://corefragment.com/blog/computer-vision-for-manufacturing-quality-control
- **Teams:** sent to the CEO by the unattended run on 2026-11-04 (post: id 1793773263415; carousel brief: id 1793773273811).

## Hooks
- **A (used below):** The model is rarely the hard part. / Getting the same photo every time is.
- **B:** Train on bench photos. / Then watch the line reject good boards.

## Post

The model is rarely the hard part.
Getting the same photo every time is. Here is why ->

We built a vision system for a European client to find defects, like bubbles, in the protective coating on PCBs. We trained the detection model and integrated it with the inspection cameras.

Most of the work wasn't the model.

A model learns whatever is in the picture. If exposure, angle or light change between training and the line, it has learned your setup, not the defect.

So the order matters:

Define the defect first. Which classes, how small, where on the board, and how many false rejects you can live with.

Then lock the imaging. Calibrate frame size, colour and exposure, align the cameras with a pattern board, and give every camera the same profile.

Inspect regions, not the whole board. Look only where each defect can occur.

Collect training images on the station itself, under production light. Bench photos look cleaner and teach the wrong picture.

Set the threshold with false rejects in mind. At 1% on 10,000 boards a shift, that's 100 good boards pulled.

Lock the photo. Then train the model.

#MachineVision #ComputerVision #Electronics

(~205 words, no emoji)

## First comment
The PCB coating inspection project (anonymised): https://corefragment.com/case-study/object-detection-of-pcb-faults-using-ml

And our longer guide on designing a vision inspection station, from spec to threshold: https://corefragment.com/blog/computer-vision-for-manufacturing-quality-control

If you're planning automated inspection on your line and want a second opinion on the camera setup or the model, we're happy to take a look. Or if you'd just like a technical chat about machine vision, we're up for that too.

## Hashtags
#MachineVision #ComputerVision #Electronics (already at the end of the post)

## Mention
None.

## Carousel brief (8 slides, 1080×1350 → `2026-11-04-lock-the-photo-carousel.pdf`)
Files: `drafts/linkedin/images/2026-11-04-lock-the-photo-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "The model is rarely the hard part." / "Getting the same photo every time is." Pipeline: Define the defect → Lock the camera and light (orange) → Collect images on the station → Train the model (greyed, "last").
2. **The project: Finding bubbles in a PCB's coating.** European client; four steps from the case study: calibrate the cameras (orange; frame size, colour, exposure, pattern board), same profile on every camera so images stitch, inspect regions of interest step by step, label/train/test on new images. Note: the coating keeps out moisture, dust and corrosion.
3. **1 Spec: Write down what a defect is.** Each defect class; smallest size (sets camera resolution); where on the board (coated vs masked connectors/test points); confirmed good and bad reference boards. Orange box: agree a false-reject target in numbers.
4. **2 Imaging: Calibrate, then freeze the setup.** Drift → lock table: exposure/colour → fixed values; camera position → pattern board; several cameras → one vision profile; lighting → try on real defects first; moving boards → global shutter. Orange box: change the setup after training and the model sees a different picture.
5. **3 Regions: Look only where the defect can be.** Board diagram: two dashed blue regions (coating even? bubbles?) and an orange connector area that must stay bare. Rules: coated areas / masked areas / everything else not inspected.
6. **4 Data: Collect images on the station itself.** Bench photos (different light, angle, clean boards) vs station photos (production light, line camera, real scrap boards). Orange box: augment for drift, blur, rotation as an extra, not a replacement.
7. **5 Threshold: Count the good boards you reject.** Worked example, 10,000 boards a shift: 1% false rejects = 100 good boards pulled (long orange bar) vs 0.1% = 10 (short blue bar). Choose the threshold on a held-out set, then check each defect class on real boards.
8. **Takeaway: Lock the photo. Then train.** Five-point recap; orange pill "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "The model is rarely the hard part. Getting the same photo every time is." Based on a PCB coating inspection project, it shows five steps for a machine vision station: define each defect and a false-reject target, calibrate and freeze the camera setup, inspect only the board regions where defects can occur, collect training images on the station itself, and set the threshold by counting good boards rejected.

## Best time to post
Wednesday 12:30–14:00 IST (European morning; the case study is a European project and electronics manufacturing is strong there). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"On our PCB coating inspection project, most of the effort went into the camera setup, not the model. Five things we'd lock before training any vision system."

## Sources (facts checked 2026-11-04)
- CoreFragment case study "Object detection of PCB faults using ML": client in Europe; ML model to detect faults during inspection of PCB coating; coating protects against moisture, dust and corrosion; bubbles named as a defect; cameras calibrated (frame size, colour, exposure) and aligned with pattern boards; vision profiles applied to the cameras so images can be captured and stitched; project inspects the PCB step by step by regions of interest; objects like bubbles labelled, model trained and tested on new images. Our role: ML development and firmware development. No results or metrics stated, and none used.
- CoreFragment blog "computer-vision-for-manufacturing-quality-control": write an inspection spec first (defect classes, minimum size, numeric false positive target, confirmed good/defective samples); lock imaging before training; global shutter for moving parts; test lighting on real defects; collect data on the installed station under production conditions (bench data mismatches); augmentation supplements real data; calibrate threshold on a validation holdout against detection and false-positive targets; validate per defect class. The "1% of 10,000 parts per shift = 100 good parts scrapped, 0.1% = 10" figure is the blog's worked arithmetic, presented as a worked example, not a result. The blog's project figures (97.2% / 0.8% etc.) are deliberately **not** used (no numbers about our results).
- General conformal-coating practice (public, e.g. IPC-A-610 coating criteria): connectors and test points are normally masked and must stay coating-free; bare spots and bubbles are common coating defects. Presented as general practice, not as details of the project.
- Overlap check (last 8 weeks): no previous post on machine vision, AI inspection or this case study; the blog post has not been used. 2026-10-07 carousel covered production readiness (test fixtures, EMC, traceability), a different topic.
