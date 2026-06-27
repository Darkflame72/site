#set document(title: "Leon Bowie — Résumé")
#set page(
  paper: "a4",
  margin: (left: 1.4cm, right: 1.4cm, top: 0.8cm, bottom: 1.5cm),
  footer: context [
    #set text(size: 8pt, fill: luma(170))
    #grid(
      columns: (1fr, 1fr, 1fr),
      datetime.today().display("[day] [month repr:long] [year]"),
      align(center)[Leon Bowie ··· Résumé],
      align(right)[#counter(page).display()],
    )
  ],
)
#set text(font: "Roboto", size: 10pt, fill: rgb("#333333"))
#set par(leading: 0.6em, spacing: 0.6em)
#set list(
  indent: 0pt,
  body-indent: 9pt,
  marker: text(fill: rgb("#00A388"), size: 7.5pt, baseline: 0.5pt)[•],
  spacing: 2pt,
)
#show list: set block(above: 3pt, below: 0pt)

#let accent    = rgb("#00A388")
#let darktext  = rgb("#414141")
#let graytext  = rgb("#5D5D5D")
#let lighttext = rgb("#999999")

// ── Section heading ───────────────────────────────────────────────────────────

#let section(title) = {
  v(5pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    align(horizon,
      text(size: 9.5pt, weight: "bold", fill: accent, tracking: 1.5pt)[#upper(title)]
    ),
    align(horizon, line(length: 100%, stroke: 0.65pt + accent)),
  )
  v(5pt)
}

// ── Work / education entry ────────────────────────────────────────────────────
// Row 1: bold title (left)  ·  date (right)
// Row 2: accent org  ·  gray location
// Row 3: bullet list (optional)

#let entry(title, org, location, date, body) = {
  block(width: 100%, spacing: 0pt)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 6pt,
      text(weight: "bold", fill: darktext)[#title],
      align(right, text(fill: lighttext, size: 9pt)[#date]),
    )
    #v(1.5pt)
    #if org != "" or location != "" [
      #text(fill: accent, size: 9pt)[#org]#if org != "" and location != "" [
        #h(4pt)#text(fill: lighttext)[·]#h(4pt)
      ]#text(fill: graytext, size: 9pt)[#location]
    ]
    #if body != none {
      v(3pt)
      set text(fill: graytext, size: 9.5pt)
      body
    }
  ]
  v(7pt)
}

// ── Award row (compact single line) ──────────────────────────────────────────

#let award(name, event, date) = {
  grid(
    columns: (7pt, 1fr, auto),
    column-gutter: 4pt,
    align(horizon, text(fill: accent, size: 7pt)[◆]),
    [
      #text(weight: "bold", fill: darktext)[#name]
      #if event != "" [
        #h(5pt)#text(fill: graytext, size: 9pt)[#event]
      ]
    ],
    align(right, text(fill: lighttext, size: 9pt)[#date]),
  )
  v(2.5pt)
}

// ── Volunteering / committee row (two lines: role + date / org) ───────────────

#let role(position, org, date) = {
  grid(
    columns: (7pt, 1fr, auto),
    column-gutter: 4pt,
    align(top, text(fill: accent, size: 7pt, baseline: 1pt)[◆]),
    block(spacing: 0pt)[
      #text(weight: "bold", fill: darktext)[#position]
      #if org != "" [
        #v(1pt)
        #text(fill: graytext, size: 9pt)[#org]
      ]
    ],
    align(right + top, text(fill: lighttext, size: 9pt)[#date]),
  )
  v(4pt)
}

// ─────────────────────────────────────────────────────────────────────────────
// HEADER
// ─────────────────────────────────────────────────────────────────────────────

#align(center)[
  #v(2pt)
  #text(weight: "light", size: 30pt, fill: darktext)[Leon ]#text(weight: "bold", size: 30pt, fill: darktext)[Bowie]
  #v(5pt)
  #set text(size: 8.5pt, fill: graytext)
  #link("mailto:leon@darkflame.dev")[leon\@darkflame.dev]
  #h(7pt)#text(fill: lighttext)[|]#h(7pt)
  #link("https://darkflame.dev")[darkflame.dev]
  #h(7pt)#text(fill: lighttext)[|]#h(7pt)
  #link("https://github.com/Darkflame72")[github/Darkflame72]
  #h(7pt)#text(fill: lighttext)[|]#h(7pt)
  #link("https://github.com/Darkflame72/home-ops")[homelab]
  #h(7pt)#text(fill: lighttext)[|]#h(7pt)
  #link("https://linkedin.com/in/leon-bowie")[linkedin/leon-bowie]
  #v(5pt)
]

#line(length: 100%, stroke: 0.5pt + luma(210))

// ─────────────────────────────────────────────────────────────────────────────
// SUMMARY
// ─────────────────────────────────────────────────────────────────────────────

#section("Summary")

#text(fill: graytext)[
  Platform engineering leader specialising in internal tooling and developer experience. At FNZ, founded the global DevOps Engineering function and grew it into a platform team owning the developer portal, self-service CI/CD, and source control standards for 2,000+ engineers across multiple regions. Beyond that, delivers systems hands-on and end-to-end, from a national-scale event scoring platform to founding and running a youth technology-education charity.
]

// ─────────────────────────────────────────────────────────────────────────────
// WORK EXPERIENCE
// ─────────────────────────────────────────────────────────────────────────────

#section("Work Experience")

#entry("Lead DevOps Engineer", "FNZ", "London, UK", "2021 – Present")[
  - Leads a team within the platform engineering organisation, having grown the remit from DevOps delivery to owning all internal developer tooling for 2,000+ developers across multiple regions.
  - Established FNZ's DevOps Engineering function, defining the practices, operating model, and hiring that established it as a standalone discipline.
  - Owns the developer portal, self-service CI/CD, and source control standards, designing everything as a product to enable adoption and reuse across the organisation.
  - Defined the onboarding playbook for platform integration across 15 acquisitions, bringing acquired engineering teams onto the internal platform.
]

#entry("Contractor", "Te Matatini", "", "2026 – Present")[
  - Architected and built the scoring platform for Aotearoa's national kapa haka festival as sole engineer, delivering it end-to-end from architecture to production deployment.
  - Designed for reliability under live-event conditions, supporting real-time scoring across multiple regional competitions and the national event.
]

#entry("Founder and CEO", "Tūhura Tech", "Wellington, New Zealand", "2022 – 2026")[
  - Founded and led a charitable organisation focused on youth technology education, setting strategy and building the team and operating model from the ground up.
  - Secured funding and sponsorships from government and corporate partners, including recognition in the Regional Economic Development Plan.
  - Designed and delivered courses spanning game development, robotics, and cyber security to youth aged 9–18.
  - Recognised with multiple awards, including Supreme Charity and Education and Youth Development awards.
]

#entry("Research Assistant", "Te Herenga Waka — Victoria University of Wellington", "Wellington, New Zealand", "2021 – 2022")[
  - Designed infrastructure combining cloud SaaS services and custom applications to collect and store IoT sensor data in distributed systems.
  - Contributed to hardware prototyping, research reports, and academic publications.
]

// ─────────────────────────────────────────────────────────────────────────────
// AWARDS
// ─────────────────────────────────────────────────────────────────────────────

#section("Awards")

#award("3rd Place (Team Oceania)", "International Cyber Security Challenge", "2026")
#award("Winner — Supreme Charity (Tūhura Tech)", "Hutt City Community Awards", "2025")
#award("Winner — Education and Youth Development (Tūhura Tech)", "Hutt City Community Awards", "2025")
#award("3rd Place (Australia Guest Team)", "European Cyber Security Competition", "2024, 2025")
#award("1st Place, Grand Champions", "NZ Cyber Security Competition", "2022")

// ─────────────────────────────────────────────────────────────────────────────
// EDUCATION
// ─────────────────────────────────────────────────────────────────────────────

#section("Education")

#entry("BSc in Computer Science", "Te Herenga Waka — Victoria University of Wellington", "Wellington, New Zealand", "2021 – 2023")[
  - Specialisation in Cyber Security and Machine Learning / Artificial Intelligence
]

#entry("Introduction to Platform Engineering", "Platform Engineering University", "Online", "2025", none)

#entry("Montessori 12–18 Orientation", "Association Montessori International", "Online", "2024", none)

// ─────────────────────────────────────────────────────────────────────────────
// COMMUNITY & VOLUNTEERING
// ─────────────────────────────────────────────────────────────────────────────

#section("Community & Volunteering Highlights")

#role("Adviser — UK Cyber Team", "Women's International Cybersecurity Competition & European Cyber Security Competition", "2026")
#role("Director — Team Oceania", "International Cyber Security Challenge (3rd place, 2026)", "2025 – 2026")
#role("Head Coach — Team Australia", "European Cyber Security Competition", "2025")
#role("NZ & Education Coordinator · Vice President of the Board", "DownUnderCTF", "2025")
#role("Wellington Regional Coordinator", "KiwiBots", "2022 – 2026")
#role("President of the Victoria Engineering Club", "Te Herenga Waka — Victoria University of Wellington", "2021 – 2022")
