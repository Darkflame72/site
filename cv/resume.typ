#set document(title: "Leon Bowie: Résumé")
#set page(
  paper: "a4",
  margin: (left: 1.4cm, right: 1.4cm, top: 0.8cm, bottom: 1.5cm),
  footer: context [
    #set text(size: 8pt, fill: luma(170))
    #grid(
      columns: (1fr, 1fr, 1fr),
      [],
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
  #link("https://linkedin.com/in/leon-bowie")[linkedin/leon-bowie]
  #v(5pt)
]

#line(length: 100%, stroke: 0.5pt + luma(210))

// ─────────────────────────────────────────────────────────────────────────────
// SUMMARY
// ─────────────────────────────────────────────────────────────────────────────

#section("Summary")

#text(fill: graytext)[
  Platform engineering leader with five years at FNZ, supporting Kubernetes, observability, the developer portal and the agentic AI platform. I build across Kubernetes, GitOps, observability and developer tooling, in Go, Rust and Python. Outside work, I founded Tūhura Tech, a youth technology education charity, and coach and organise national teams in the European and International Cybersecurity Challenges.
]

// ─────────────────────────────────────────────────────────────────────────────
// TECHNICAL SKILLS
// ─────────────────────────────────────────────────────────────────────────────

#section("Technical Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 3pt,
  text(weight: "bold", fill: darktext)[Platforms],
  text(fill: graytext)[Kubernetes, Kubernetes operators, Helm, Argo CD, GitOps, Istio, Terraform, Azure, VMware Tanzu, Backstage, Devcontainers],
  text(weight: "bold", fill: darktext)[AI],
  text(fill: graytext)[AI gateways, MCP gateways, agentic agent infrastructure, AI rollout and governance],
  text(weight: "bold", fill: darktext)[Observability],
  text(fill: graytext)[OpenTelemetry, Grafana, Alertmanager, Mimir, Loki, Tempo],
  text(weight: "bold", fill: darktext)[Languages],
  text(fill: graytext)[Go, Rust, Python, TypeScript, Bash],
)

// ─────────────────────────────────────────────────────────────────────────────
// WORK EXPERIENCE
// ─────────────────────────────────────────────────────────────────────────────

#section("Work Experience")

#entry("Lead DevOps Engineer", "FNZ", "Wellington, NZ and London, UK", "Jul 2024 – Present")[
  - Leads platform engineering teams focused on developer experience and the internal platform, supporting Kubernetes, observability and other platform services for 2,000+ developers across multiple regions.
  - Hires and grows engineers across the platform teams.
  - Designs FNZ's global OpenTelemetry and standard observability platform, covering production.
  - Designs and introduces the company developer portal on Backstage, and leads developer experience on source code systems.
  - Leads the AI platform for engineering teams, including AI and MCP gateways, secure AI controls, AI rollout, and the agentic AI platform.
  - Works closely with AppSec on software supply chain security and compliance (SOC 2, ISO 27001), introducing SBOMs and SLSA standards and improving release processes with dependency automation.
  - Tracks DORA metrics (lead time, deployment frequency, change failure rate and time to restore) to measure whether platform changes help teams ship faster.
  - Moves all internal technical documentation into code, making it accessible to developers and AI tools.
  - Defines the onboarding playbook for bringing acquired engineering teams onto the internal platform across 15 acquisitions.
  - Owns Terraform-managed systems end to end.
  - Rolling out on-demand, ephemeral development environments for engineers and AI agents, built on devcontainers.
]

#entry("DevOps Engineer", "FNZ", "Wellington, NZ and London, UK", "Sep 2023 – Jul 2024")[
  - Built FNZ's first DevOps team from scratch and led the consolidation of source control and CI/CD across the organisation and its acquisitions, replacing 10 separate systems with one standard.
  - Led the DevOps team day to day, setting its priorities and growing its engineers.
]

#entry("Intern Analyst Developer", "FNZ", "Wellington, NZ and London, UK", "Jun 2021 – Sep 2023")[
  - Started as a full stack developer on client delivery projects, then moved into Developer Experience, building tooling and improving release and deployment processes.
  - Launched the DevOps transformation initiative that led to the creation of the DevOps team.
  - Began migrating source code systems to GitHub and standardising CI processes.
]

#entry("Contractor", "Te Matatini", "", "2026 – Present")[
  - Architects and builds the scoring platform for Aotearoa's national kapa haka festival, from design to production.
  - Designs for reliability under live-event conditions, supporting real-time scoring across regional competitions and the national event.
]

#entry("Founder and CEO", "Tūhura Tech", "Wellington, New Zealand", "Jun 2021 – Mar 2026")[
  - Founded and led a charitable organisation focused on youth technology education, building its team and operating model from the ground up.
  - Delivered free technology education to 2,000+ young people over the years.
  - Secured government and corporate funding and sponsorships, and was recognised in the Regional Economic Development Plan.
]

#entry("Research Assistant", "Te Herenga Waka, Victoria University of Wellington", "Wellington, New Zealand", "Oct 2021 – Nov 2022")[
  - Built and deployed remote sensors and monitoring infrastructure for a research project measuring nitrate levels in water systems, to assess the environmental impact of farming.
  - Designed cloud and custom applications to collect and store IoT sensor data in distributed systems.
]

#entry("Founder and Head Mentor", "Matamoe Community Hub", "Wellington, New Zealand", "Nov 2020 – May 2021")[
  - Founded Matamoe Hub, providing free technology education for youth aged 8–18 in Wellington's Eastern Suburbs.
]

// ─────────────────────────────────────────────────────────────────────────────
// AWARDS
// ─────────────────────────────────────────────────────────────────────────────

#section("Awards")

#award("18th Place (UK Cyber Team)", "European Cybersecurity Challenge", "2026")
#award("3rd Place (Team Oceania)", "International Cybersecurity Challenge", "2026")
#award("Supreme and Education & Youth Development Winner, Hutt City (Tūhura Tech)", "Wellington Airport Regional Community Awards", "2025")
#award("3rd Place (Australia Guest Team)", "European Cybersecurity Challenge", "2024, 2025")
#award("1st Place, Grand Champions", "NZ Cyber Security Competition", "2022")

// ─────────────────────────────────────────────────────────────────────────────
// EDUCATION
// ─────────────────────────────────────────────────────────────────────────────

#section("Education")

#entry("BSc in Computer Science", "Te Herenga Waka, Victoria University of Wellington", "Wellington, New Zealand", "2021 – 2023")[
  - Specialisation in Cyber Security and Machine Learning / Artificial Intelligence
  - Student Representative and Faculty Delegate
]

// ─────────────────────────────────────────────────────────────────────────────
// CERTIFICATIONS
// ─────────────────────────────────────────────────────────────────────────────

#section("Certifications")

#award("Introduction to Platform Engineering", "Platform Engineering", "Sep 2025")
#award("Comprehensive First Aid Certification", "New Zealand Red Cross", "Nov 2022 – Feb 2027")

// ─────────────────────────────────────────────────────────────────────────────
// HOMELAB
// ─────────────────────────────────────────────────────────────────────────────

#section("Homelab")

#role("Kubernetes Cluster", [Cloud-native, GitOps-managed Kubernetes cluster with automated updates, secrets and backups, and published health metrics. Source: #link("https://github.com/Darkflame72/home-ops")[github.com/Darkflame72/home-ops]], "")

// ─────────────────────────────────────────────────────────────────────────────
// COMMUNITY & VOLUNTEERING
// ─────────────────────────────────────────────────────────────────────────────

#section("Community & Volunteering Highlights")

#role("Advisor/Coach, UK Cyber Team", "Women's International Cybersecurity Challenge & European Cybersecurity Challenge", "May 2026 – Present")
#role("Head Coach, Team Australia; Steering Committee, Team Oceania", "European Cybersecurity Challenge & International Cybersecurity Challenge", "2025 – 2026")
#role("Aotearoa Lead, Partnerships & Sponsorships and Outreach; Vice President", "DownUnderCTF (also Vice President, DownUnderCTF Inc.)", "Jan 2024 – Present")
#role("Regional Coordinator (Wellington) and Referee", "KiwiBots", "Sep 2021 – Mar 2026")
#role("President, Victoria Engineering Club", "Te Herenga Waka, Victoria University of Wellington", "2021 – 2022")
#role("Vice President, Victoria Robotics and Mechatronics Club", "Te Herenga Waka, Victoria University of Wellington", "2021")
