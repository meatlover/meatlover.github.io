# Site Redesign — meatlover.io Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Rebuild meatlover.github.io with the Warm Maker theme, a named-products section, and a CNAME file so the site serves correctly from the custom domain meatlover.io.

**Architecture:** Three files change — `CNAME` (new, 1 line), `styles.css` (full rewrite), `index.html` (full rebuild). No build tools, no JavaScript, no external dependencies. Verification is visual (open in browser).

**Tech Stack:** Plain HTML5, CSS custom properties, GitHub Pages custom domain (CNAME)

---

## File Map

| File | Action | Responsibility |
|---|---|---|
| `CNAME` | Create | Tells GitHub Pages to serve from `meatlover.io` |
| `.gitignore` | Create/update | Ignore `.superpowers/` brainstorm artifacts |
| `styles.css` | Full rewrite | Warm Maker theme tokens, all layout and component styles |
| `index.html` | Full rebuild | Header, hero, products, fields, approach, contact, footer |

---

## Task 1: CNAME + .gitignore

**Files:**
- Create: `CNAME`
- Create/modify: `.gitignore`

- [ ] **Step 1: Create CNAME**

  Create `CNAME` at repo root with exactly one line and no trailing newline issues:

  ```
  meatlover.io
  ```

- [ ] **Step 2: Create .gitignore**

  Check if `.gitignore` exists:
  ```bash
  ls .gitignore
  ```

  If it does not exist, create it. If it exists, append the line. Either way, ensure `.superpowers/` is present:

  ```
  .superpowers/
  ```

- [ ] **Step 3: Verify CNAME content**

  ```bash
  cat CNAME
  ```

  Expected output: `meatlover.io`

- [ ] **Step 4: Commit**

  ```bash
  git add CNAME .gitignore
  git commit -m "Add CNAME for meatlover.io custom domain"
  ```

---

## Task 2: Rewrite styles.css (Warm Maker theme)

**Files:**
- Modify: `styles.css` (full rewrite)

- [ ] **Step 1: Replace styles.css with the full Warm Maker stylesheet**

  Overwrite `styles.css` entirely with the following content:

  ```css
  *, *::before, *::after {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  :root {
    --bg: #faf7f2;
    --bg-card: #f0ebe3;
    --border: #e8e0d5;
    --text: #2d2a26;
    --text-muted: #6b6259;
    --accent: #b5956a;
  }

  html {
    scroll-behavior: smooth;
  }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    line-height: 1.6;
  }

  a { color: inherit; }

  /* ── Header ── */
  .site-header {
    position: sticky;
    top: 0;
    z-index: 10;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.25rem 6vw;
    border-bottom: 1px solid var(--border);
    background: var(--bg);
  }

  .brand {
    font-family: Georgia, serif;
    font-weight: 700;
    font-size: 1.1rem;
    color: var(--text);
    text-decoration: none;
    letter-spacing: -0.02em;
  }

  .nav {
    display: flex;
    gap: 1.5rem;
  }

  .nav a {
    font-size: 0.875rem;
    color: var(--text-muted);
    text-decoration: none;
  }

  .nav a:hover { color: var(--text); }

  /* ── Shared section wrapper ── */
  .section {
    padding: 5rem 6vw;
    max-width: 1100px;
    margin: 0 auto;
  }

  /* ── Eyebrow ── */
  .eyebrow {
    font-size: 0.75rem;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: var(--accent);
    margin-bottom: 0.6rem;
  }

  /* ── Section heading ── */
  .section-heading {
    margin-bottom: 2.5rem;
  }

  .section-heading h2 {
    font-family: Georgia, serif;
    font-size: clamp(1.6rem, 3vw, 2.4rem);
    font-weight: 700;
    letter-spacing: -0.02em;
    line-height: 1.15;
  }

  /* ── Buttons ── */
  .button {
    display: inline-block;
    padding: 0.65rem 1.4rem;
    border-radius: 4px;
    font-size: 0.9rem;
    font-weight: 500;
    text-decoration: none;
    transition: opacity 0.15s;
  }

  .button:hover { opacity: 0.82; }

  .button.primary {
    background: var(--text);
    color: var(--bg);
  }

  .button.secondary {
    border: 1px solid var(--border);
    color: var(--text-muted);
  }

  /* ── Hero ── */
  .hero {
    padding: 6rem 6vw 5rem;
    max-width: 1100px;
    margin: 0 auto;
  }

  .hero h1 {
    font-family: Georgia, serif;
    font-size: clamp(2.2rem, 5vw, 3.75rem);
    font-weight: 700;
    line-height: 1.12;
    letter-spacing: -0.03em;
    color: var(--text);
    margin-bottom: 1.25rem;
    max-width: 700px;
  }

  .hero-text {
    font-size: 1.1rem;
    color: var(--text-muted);
    max-width: 560px;
    margin-bottom: 2rem;
    line-height: 1.65;
  }

  .hero-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 0.75rem;
  }

  /* ── Products grid ── */
  .product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.25rem;
  }

  .product-card {
    background: var(--bg-card);
    border: 1px solid var(--border);
    border-radius: 8px;
    padding: 1.75rem;
  }

  .product-card-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 0.75rem;
    margin-bottom: 0.75rem;
  }

  .product-card h3 {
    font-family: Georgia, serif;
    font-size: 1.2rem;
    font-weight: 700;
    color: var(--text);
  }

  .product-tag {
    flex-shrink: 0;
    font-size: 0.68rem;
    text-transform: uppercase;
    letter-spacing: 0.07em;
    color: var(--accent);
    background: var(--bg);
    border: 1px solid var(--border);
    border-radius: 3px;
    padding: 0.2rem 0.5rem;
    white-space: nowrap;
  }

  .product-card p {
    font-size: 0.9rem;
    color: var(--text-muted);
    line-height: 1.6;
    margin-bottom: 1rem;
  }

  .product-status {
    font-size: 0.75rem;
    color: var(--accent);
    letter-spacing: 0.04em;
    margin-bottom: 0 !important;
  }

  /* ── Fields grid ── */
  .field-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 1rem;
  }

  .field-card {
    background: var(--bg-card);
    border: 1px solid var(--border);
    border-radius: 6px;
    padding: 1.25rem 1.5rem;
  }

  .field-card h3 {
    font-size: 0.95rem;
    font-weight: 700;
    color: var(--text);
    margin-bottom: 0.4rem;
  }

  .field-card p {
    font-size: 0.85rem;
    color: var(--text-muted);
    line-height: 1.55;
  }

  /* ── Approach (split) ── */
  .split-section {
    display: grid;
    grid-template-columns: 1fr 1.5fr;
    gap: 4rem;
    align-items: start;
  }

  .split-section h2 {
    font-family: Georgia, serif;
    font-size: clamp(1.4rem, 2.5vw, 2rem);
    font-weight: 700;
    letter-spacing: -0.02em;
  }

  .statement p {
    font-size: 1rem;
    color: var(--text-muted);
    line-height: 1.7;
    margin-bottom: 1rem;
  }

  .statement p:last-child { margin-bottom: 0; }

  /* ── Contact band ── */
  .contact-band {
    background: var(--bg-card);
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
    padding: 4rem 6vw;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    gap: 1.5rem;
  }

  .contact-band h2 {
    font-family: Georgia, serif;
    font-size: clamp(1.4rem, 2.5vw, 2rem);
    font-weight: 700;
  }

  /* ── Footer ── */
  .site-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1.75rem 6vw;
    font-size: 0.85rem;
    color: var(--text-muted);
    border-top: 1px solid var(--border);
    max-width: 1100px;
    margin: 0 auto;
  }

  /* ── Responsive ── */
  @media (max-width: 700px) {
    .split-section {
      grid-template-columns: 1fr;
      gap: 2rem;
    }

    .site-footer {
      flex-direction: column;
      gap: 0.4rem;
      text-align: center;
    }
  }
  ```

- [ ] **Step 2: Open in browser to do a quick sanity check on background colour**

  ```bash
  open index.html
  ```

  Expected: page background should be warm off-white (`#faf7f2`). If the browser shows the old green-tinted background, hard-refresh (`Cmd+Shift+R`).

- [ ] **Step 3: Commit**

  ```bash
  git add styles.css
  git commit -m "Rewrite styles.css with Warm Maker theme"
  ```

---

## Task 3: Rebuild index.html

**Files:**
- Modify: `index.html` (full rebuild)

- [ ] **Step 1: Replace index.html with the full rebuilt page**

  Overwrite `index.html` entirely:

  ```html
  <!doctype html>
  <html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta
        name="description"
        content="Meatlover Studio builds practical applications for Apple platforms, connected devices, embedded systems, and lightweight web services."
      >
      <title>Meatlover Studio</title>
      <link rel="stylesheet" href="styles.css">
    </head>
    <body>
      <header class="site-header">
        <a class="brand" href="#top" aria-label="Meatlover Studio home">Meatlover Studio</a>
        <nav class="nav" aria-label="Primary navigation">
          <a href="#products">Products</a>
          <a href="#work">Work</a>
          <a href="#contact">Contact</a>
        </nav>
      </header>

      <main id="top">

        <section class="hero" aria-labelledby="hero-title">
          <p class="eyebrow">Independent software studio</p>
          <h1 id="hero-title">Handcrafted software<br>for curious builders.</h1>
          <p class="hero-text">
            We build practical apps, device tools, and connected prototypes for Mac,
            iOS, embedded systems, and web-connected workflows.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="#products">See our products</a>
            <a class="button secondary" href="mailto:hello@meatlover.org">Contact</a>
          </div>
        </section>

        <section id="products" class="section" aria-labelledby="products-title">
          <div class="section-heading">
            <p class="eyebrow">What we ship</p>
            <h2 id="products-title">Products</h2>
          </div>
          <div class="product-grid">

            <article class="product-card">
              <div class="product-card-header">
                <h3>meatmux</h3>
                <span class="product-tag">macOS</span>
              </div>
              <p>An AI-aware terminal multiplexer for macOS. meatmux surfaces context from running panes to a built-in assistant, letting you query, summarise, and act on terminal output without leaving the workflow.</p>
              <p class="product-status">In development</p>
            </article>

            <article class="product-card">
              <div class="product-card-header">
                <h3>habitlover</h3>
                <span class="product-tag">iOS · Web · CLI</span>
              </div>
              <p>A habit tracking system with a Go server backend, web interface, and command-line client. Stores streaks and daily check-ins locally, syncs across devices, and keeps history in a queryable format.</p>
              <p class="product-status">In development</p>
            </article>

            <article class="product-card">
              <div class="product-card-header">
                <h3>pihid</h3>
                <span class="product-tag">Embedded · Raspberry Pi</span>
              </div>
              <p>A USB HID keyboard and mouse device built on Raspberry Pi Zero W. Exposes a REST API that lets a Mac send keystrokes and pointer events to any connected machine — designed for automated UI testing without requiring software on the target.</p>
              <p class="product-status">Prototype</p>
            </article>

            <article class="product-card">
              <div class="product-card-header">
                <h3>phone-clicker-esp32</h3>
                <span class="product-tag">Embedded · ESP32</span>
              </div>
              <p>An ESP32-based hardware automation tool for mobile devices. Drives physical tap and swipe actions on a phone screen via servo-controlled mechanisms, controlled over Wi-Fi — useful for repetitive test scenarios that can't be automated in software.</p>
              <p class="product-status">Prototype</p>
            </article>

          </div>
        </section>

        <section id="work" class="section" aria-labelledby="work-title">
          <div class="section-heading">
            <p class="eyebrow">Development fields</p>
            <h2 id="work-title">What we build</h2>
          </div>
          <div class="field-grid">
            <article class="field-card">
              <h3>Mac Applications</h3>
              <p>Native desktop utilities, workflow tools, menu bar apps, and automation-friendly software for macOS.</p>
            </article>
            <article class="field-card">
              <h3>iPhone &amp; iPad Apps</h3>
              <p>Mobile applications, companion apps, prototypes, and device-focused interfaces for iOS and iPadOS.</p>
            </article>
            <article class="field-card">
              <h3>ESP32 &amp; Embedded Systems</h3>
              <p>Firmware prototypes, sensor integrations, small hardware controllers, and connected-device experiments.</p>
            </article>
            <article class="field-card">
              <h3>Web &amp; Cloud Services</h3>
              <p>Lightweight dashboards, APIs, data sync services, admin tools, and integrations that support app workflows.</p>
            </article>
            <article class="field-card">
              <h3>Automation Tools</h3>
              <p>Internal tools, scripts, monitoring helpers, build utilities, and repeatable workflows for small teams.</p>
            </article>
            <article class="field-card">
              <h3>Product Prototypes</h3>
              <p>Early-stage technical validation, usability prototypes, hardware-software demos, and proof-of-concept builds.</p>
            </article>
          </div>
        </section>

        <section id="approach" class="section split-section" aria-labelledby="approach-title">
          <div>
            <p class="eyebrow">Operating area</p>
            <h2 id="approach-title">General software and device development</h2>
          </div>
          <div class="statement">
            <p>
              Meatlover Studio works on practical, general-purpose development projects:
              productivity software, mobile tools, embedded prototypes, and supporting
              web services.
            </p>
            <p>
              We focus on general, low-risk software categories and do not operate
              in restricted, highly regulated, or speculative financial sectors.
              Our public presence intentionally describes fields of work rather
              than private project details.
            </p>
          </div>
        </section>

        <section id="contact" class="contact-band" aria-labelledby="contact-title">
          <p class="eyebrow">Contact</p>
          <h2 id="contact-title">For general development inquiries</h2>
          <a class="button primary" href="mailto:hello@meatlover.org">hello@meatlover.org</a>
        </section>

      </main>

      <footer class="site-footer">
        <span>Meatlover Studio</span>
        <span>General software development</span>
      </footer>
    </body>
  </html>
  ```

- [ ] **Step 2: Open in browser and verify full page**

  ```bash
  open index.html
  ```

  Check each of the following — all must pass before committing:

  - [ ] Header: "Meatlover Studio" wordmark in serif, nav shows Products · Work · Contact
  - [ ] Hero: warm off-white background, serif headline, two CTA buttons visible
  - [ ] Products section: 4 cards visible — meatmux, habitlover, pihid, phone-clicker-esp32
  - [ ] Each product card: name, platform tag (top-right), 2-sentence description, status line
  - [ ] Fields section: 6 cards in a grid
  - [ ] Approach section: 2-column layout
  - [ ] Contact band: distinct warm card background, email button
  - [ ] Footer: studio name + tagline
  - [ ] "See our products" CTA scrolls to the Products section
  - [ ] No blue default link underlines visible anywhere

- [ ] **Step 3: Check mobile layout at 390px width**

  In browser DevTools (F12 → device toolbar), set width to 390px and verify:

  - [ ] Approach section collapses to single column
  - [ ] Product cards stack vertically (single column)
  - [ ] Footer stacks vertically and centres

- [ ] **Step 4: Commit**

  ```bash
  git add index.html
  git commit -m "Rebuild index.html — Warm Maker theme, products section, updated nav"
  ```

---

## Task 4: Push and configure GitHub Pages custom domain

- [ ] **Step 1: Push to GitHub**

  ```bash
  git push origin main
  ```

- [ ] **Step 2: Verify GitHub Pages picks up the CNAME**

  Open: `https://github.com/meatlover/meatlover.github.io/settings/pages`

  Expected: the "Custom domain" field should auto-populate with `meatlover.io` (GitHub reads the CNAME file). If it doesn't appear within 30 seconds, type `meatlover.io` manually and save.

- [ ] **Step 3: Configure DNS at your registrar**

  In your registrar's DNS panel for `meatlover.io`, add **one** of the following (CNAME is simpler if the registrar supports it at the apex):

  **Option A — A records (apex domain, works everywhere):**
  ```
  Type  Host  Value
  A     @     185.199.108.153
  A     @     185.199.109.153
  A     @     185.199.110.153
  A     @     185.199.111.153
  ```

  **Option B — CNAME (only if registrar supports CNAME flattening at apex):**
  ```
  Type   Host  Value
  CNAME  @     meatlover.github.io.
  ```

  Also add a `www` redirect if wanted:
  ```
  Type   Host  Value
  CNAME  www   meatlover.github.io.
  ```

- [ ] **Step 4: Wait for DNS propagation then verify**

  DNS changes can take a few minutes to an hour. Once propagated:

  ```bash
  curl -I https://meatlover.io
  ```

  Expected: `HTTP/2 200` with no redirect to `meatlover.github.io`. The URL bar in a browser should stay on `meatlover.io` throughout.

- [ ] **Step 5: Enable HTTPS in GitHub Pages settings**

  Back in `https://github.com/meatlover/meatlover.github.io/settings/pages`, once DNS is confirmed, check "Enforce HTTPS". GitHub will provision a free Let's Encrypt certificate automatically (may take a few minutes).
