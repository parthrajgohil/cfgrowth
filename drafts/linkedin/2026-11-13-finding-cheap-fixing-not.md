# LinkedIn post: 2026-11-13 (company page)

- **Slot:** Friday, Industry POV (news). Last Friday (06 Nov) was the people video, so this week is news.
- **Pillar:** Prototype-to-production pitfalls (shipping and patching firmware you didn't write)
- **News source:** Forescout's AI-assisted review of 10 embedded TCP/IP stacks, reported 12 Nov 2026
  - Cybersecurity Dive, 12 Nov 2026: https://www.cybersecuritydive.com/news/ai-vulnerabilities-critical-infrastructure-embedded-software/874499/
  - Viakoo daily OT news via Security Boulevard, 12 Nov 2026 (mentions binary-only analysis, the advice to disable unused services, and SBOMs): https://securityboulevard.com/2026/11/daily-ot-security-news-november-12-2026/
  - Facts used: 10 stacks, among them lwIP and Contiki; 99 vulnerabilities validated, 66 of them new; 90 hours, against Forescout's estimate of about nine months by hand; about half of the new bugs were memory corruption; the harness did best on protocol-parsing code; binary-only analysis still worked, but was slower and cost more; Forescout recommends disabling unneeded services (FTP, Telnet, IPv6, web admin). I couldn't reach Forescout's own report, so these facts come from the two articles above. The articles give different cost figures, so the post leaves cost out.
- **Blog:** none (news post). Doesn't repeat the 25 Sep CRA post: that one was about reporting deadlines. This one is about finding, stripping and patching third-party network code.

## Hooks
- **A:** Finding bugs in your device's network stack just got cheap.
- **B:** You didn't write your TCP/IP stack. You still ship it.

## Post (hook A)

Finding bugs in your device's network stack just got cheap.
Fixing them didn't. Here is why ->

This week Forescout published research in which an AI-assisted setup reviewed 10 embedded TCP/IP stacks, among them lwIP and Contiki.

It validated 99 vulnerabilities in 90 hours, 66 of them new. Forescout estimates the same review would take about nine months by hand.

About half of the new bugs were memory corruption, the kind that hides in code parsing incoming packets.

They also ran it on binaries alone. Slower, but it still found bugs. Keeping your source code private doesn't protect you.

Most device teams never wrote their stack. It came inside the chip vendor's SDK (STM32Cube, ESP-IDF, an RTOS package) and nobody has touched it since.

So the useful questions are now very practical:

Which stack, and which exact version, is in each firmware build you ship?
Is FTP, Telnet, IPv6 or a web admin page compiled in that the product never uses?
Can you rebuild an old release with a patched stack, test it, and push it over the air without a site visit?

Finding the bug is no longer the slow part. Shipping the fix is.

Pick one product this month and answer those three questions. The gaps are your real to-do list.

#EmbeddedSystems #IoTSecurity #Firmware

(~195 words without hashtags)

## First comment
The research, as reported by Cybersecurity Dive: https://www.cybersecuritydive.com/news/ai-vulnerabilities-critical-infrastructure-embedded-software/874499/
If you'd like a second pair of eyes on which network services your firmware actually exposes, or how an old release would get patched, our firmware team is happy to look. Or just ask your question here.

## Mention
@Forescout (company page): it's their research.

## Visual brief (Friday news: one image)
- File: `drafts/linkedin/images/2026-11-13-finding-cheap-fixing-not.svg` (1200×1500). Renders to `2026-11-13-finding-cheap-fixing-not.png`.
- Headline "Finding got cheap. / Fixing didn't." Top half: two bars, "by hand: about nine months" (full width) against "AI-assisted: 90 hours" (a thin sliver), labelled "99 bugs validated, 66 of them new". Bottom half: the three fix questions as a numbered list. Item 3 (patch an old release over the air) is the orange highlight.

## Alt text
A chart comparing roughly nine months of manual review with 90 hours of AI-assisted review, which found 99 bugs in embedded TCP/IP stacks. Below it, three steps to fixing them: know the stack version in each build, compile out unused services, and patch old releases over the air.

## Best time to post
Today, 13:00–14:30 IST (European lunchtime). Friday evening in the US is weak, so post for Europe.

## Reshare comment for Parthraj's personal profile
Most of the device teams we meet have never opened the TCP/IP stack that came with their chip SDK. After this week's research, it's worth an afternoon to find out what's in there.
