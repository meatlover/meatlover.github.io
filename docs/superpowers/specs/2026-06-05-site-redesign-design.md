# Site Redesign — meatlover.io

**Date:** 2026-06-05
**Status:** Approved

## Goal

Rebuild the Meatlover Studio homepage to satisfy Wize business website requirements (business name, main activities, named products/services) while upgrading to the Warm Maker visual theme and serving from the custom domain `meatlover.io`.

## Requirements Context

Wize requires a live business website that shows:
- The business name
- The main business activities
- Details of specific products or services

The current site passes the first two but fails the third — it only shows abstract development field categories, not named products.

## Domain Strategy

Use GitHub Pages custom domain — not a redirect. The browser always shows `meatlover.io`.

**Code change:** Add `CNAME` file to repo root containing `meatlover.io`.

**DNS change (one-time, outside repo):** In the meatlover.io registrar, add an A record pointing to GitHub Pages IPs, or a CNAME record pointing to `meatlover.github.io`. Then set the custom domain in GitHub repo Settings → Pages.

## Visual Theme — Warm Maker

| Token | Value |
|---|---|
| Background | `#faf7f2` |
| Card background | `#f0ebe3` |
| Border / divider | `#e8e0d5` |
| Body text | `#2d2a26` |
| Muted text | `#6b6259` |
| Accent | `#b5956a` |
| Headline font | Georgia, serif |
| Body font | System sans-serif |
| CTA button | `#2d2a26` background, `#faf7f2` text |

## Files Changed

| File | Change |
|---|---|
| `index.html` | Full rebuild |
| `styles.css` | Full rewrite |
| `CNAME` | New — contains `meatlover.io` |

## Page Structure

```
Header
  — Wordmark: "Meatlover Studio"
  — Nav: Products · Work · Contact

Hero  (#top)
  — Eyebrow: "Independent software studio"
  — Headline: "Handcrafted software for curious builders."
  — Body: one sentence covering Mac, iOS, embedded, and web
  — CTAs: "See our products" (#products), "Contact" (mailto)

Products  (#products)
  — Eyebrow: "What we ship"
  — Heading: "Products"
  — 4 cards in a 2×2 grid

Work  (#work)
  — Eyebrow: "Development fields"
  — Heading: "What we build"
  — 2×3 grid of field cards (compact)

Approach  (#approach)
  — 2-column split: heading left, statement right

Contact  (#contact)
  — Band with email CTA

Footer
  — Studio name + tagline
```

## Product Cards

No repo links — all source repos remain private. Cards describe the product only.

### meatmux
- **Platform tag:** macOS
- **Description:** An AI-aware terminal multiplexer for macOS. meatmux surfaces context from running panes to a built-in assistant, letting you query, summarise, and act on terminal output without leaving the workflow.
- **Status:** In development

### habitlover
- **Platform tag:** iOS · Web · CLI
- **Description:** A habit tracking system with a Go server backend, web interface, and command-line client. habitlover stores streaks and daily check-ins locally, syncs across devices, and keeps history in a queryable format.
- **Status:** In development

### pihid
- **Platform tag:** Embedded · Raspberry Pi
- **Description:** A USB HID keyboard and mouse device built on Raspberry Pi Zero W. pihid exposes a REST API that lets a Mac send keystrokes and pointer events to any connected machine — designed for automated UI testing without requiring software on the target.
- **Status:** Prototype

### phone-clicker-esp32
- **Platform tag:** Embedded · ESP32
- **Description:** An ESP32-based hardware automation tool for mobile devices. It drives physical tap and swipe actions on a phone screen via servo-controlled mechanisms, controlled over Wi-Fi — useful for repetitive test scenarios that can't be automated in software.
- **Status:** Prototype

## Constraints

- No JavaScript required — static HTML/CSS only
- No external CDN dependencies
- All product repos remain private; no source links on the page
- Must pass Wize review: business name, activities, and specific named products all visible above the fold or within one scroll
