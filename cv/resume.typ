#set document(title: "Leon Bowie: CV")
#set page(
  paper: "a4",
  margin: (left: 1.4cm, right: 1.4cm, top: 0.8cm, bottom: 1.5cm),
  footer: context [
    #set text(size: 8pt, fill: luma(170))
    #grid(
      columns: (1fr, 1fr, 1fr),
      [],
      align(center)[Leon Bowie ··· CV],
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
  spacing: 4pt,
)
#show list: set block(above: 3pt, below: 0pt)

#let accent    = rgb("#00A388")
#let darktext  = rgb("#414141")
#let graytext  = rgb("#5D5D5D")
#let lighttext = rgb("#999999")

// Placeholder for numbers still to fill in. Renders in red so it can't slip through.
#let todo(body) = text(fill: red, weight: "bold")[\[#body\]]

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
  block(width: 100%, spacing: 0pt, breakable: false)[
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
  Hands-on platform engineering leader who builds systems, then grows the teams that run them. At FNZ I built the AI platform, OpenTelemetry observability, Argo CD GitOps and Backstage platforms used by 2,500+ engineers. I also moved 3,000+ repositories onto GitHub and now lead two teams (15 engineers) that run the platform. I founded Tūhura Tech, a youth technology education charity with 10 paid staff and nearly NZ\$500,000 raised, and coach national teams at the European and International Cybersecurity Challenges.
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
  text(fill: graytext)[Kubernetes, Kubernetes operators, Helm, Argo CD, GitOps, Istio, Terraform, Azure, VMware Tanzu, Linux, Docker, GitHub Actions, Backstage, devcontainers, Kargo],
  text(weight: "bold", fill: darktext)[AI],
  text(fill: graytext)[Agentgateway, AI gateways, MCP gateways, agentic AI infrastructure, AI security controls],
  text(weight: "bold", fill: darktext)[Security],
  text(fill: graytext)[Kyverno, Infisical, SBOMs, SLSA],
  text(weight: "bold", fill: darktext)[Observability],
  text(fill: graytext)[OpenTelemetry, Grafana, Alertmanager, Mimir, Loki, Tempo],
  text(weight: "bold", fill: darktext)[Languages],
  text(fill: graytext)[Go, Rust, Python, TypeScript, Bash],
)head

// ─────────────────────────────────────────────────────────────────────────────
// WORK EXPERIENCE
// ─────────────────────────────────────────────────────────────────────────────

#section("Work Experience")

#entry("Lead DevOps Engineer", "FNZ", "Wellington, NZ and London, UK", "Jul 2024 – Present")[
  - Lead two platform engineering teams (15 engineers, all personally hired or brought in through internal moves) running the systems below for 2,500+ engineers, and remain accountable architect.
  - Built the AI platform, and am architecting the AI Gateway, MCP gateways, AI security controls and agentic AI platform.
  - Build and design FNZ's global OpenTelemetry observability platform end to end to cover 150 clusters and 400 on-premises environments.
  - Built the internal GitOps platform on Argo CD, cutting internal application deployments from days to under five minutes.
  - Built the initial Backstage developer portal, adopted by every engineering team and cataloguing 4,000+ components, and own developer experience for source control, ephemeral devcontainer environments for engineers and AI agents, and docs-as-code.
  - Partner with AppSec on software supply chain security and compliance (SOC 2, ISO 27001), introducing SBOMs and SLSA standards and automating dependency updates in release processes.
  - Own the playbook for onboarding acquired engineering teams onto the platform, used across 15 acquisitions.
]

#entry("DevOps Engineer", "FNZ", "Wellington, NZ", "Sep 2023 – Jul 2024")[
  - Built FNZ's first DevOps team from scratch.
  - Led the consolidation of source control and CI/CD across the organisation and its acquisitions, moving 3,000+ repositories to GitHub, bringing most of them onto GitHub Actions, and replacing 10 separate systems with one.
  - Led the team day to day, and began centralising the organisation's technical documentation as docs-as-code.
]

#entry("Intern Analyst Developer (full-time)", "FNZ", "Wellington, NZ", "Jun 2021 – Sep 2023")[
  - Started as a full stack developer on client delivery projects, then moved into Developer Experience, building tooling and improving release and deployment processes.
  - Launched and led the DevOps transformation initiative while still an intern, making the case that led the business to fund a dedicated team.
  - Began migrating source code systems to GitHub and standardising CI processes, and wrote FNZ's initial GitHub Apps.
]

#entry("Contract Software Architect", "Te Matatini", "Remote", "Feb 2026 – Present")[
  - Sole architect and engineer of the scoring platform for Aotearoa's national kapa haka festival, owning it end to end from design through live operation.
  - Designed to support real-time scoring by 45 judges across multiple categories and 50+ teams over the five-day national festival, which draws 150,000+ attendees.
  - Already running live at regional events, proving reliability under live-event conditions ahead of the platform's national festival debut.
]

#entry("Founder and CEO", "Tūhura Tech", "Wellington, NZ", "Jun 2021 – Mar 2026")[
  - Founded and led a youth technology education charity from the ground up, growing a team of 10 paid staff.
  - Delivered free technology education to 2,000+ young people.
  - Secured nearly NZ\$500,000 in government and corporate funding; recognised in the Regional Economic Development Plan.
  - Previously founded Matamoe Community Hub (Nov 2020 – May 2021), free tech education for youth aged 8–18.
]

#entry("Research Assistant", "Te Herenga Waka, Victoria University of Wellington", "Wellington, NZ", "Oct 2021 – Nov 2022")[
  - Built remote nitrate sensors and the cloud infrastructure to collect and store their IoT data, for research into the environmental impact of farming on water systems.
]

// ─────────────────────────────────────────────────────────────────────────────
// COMMUNITY & VOLUNTEERING
// ─────────────────────────────────────────────────────────────────────────────

#section("Community & Volunteering")

#role("Advisor/Coach, UK Cyber Team", "Women's International Cybersecurity Challenge & European Cybersecurity Challenge", "May 2026 – Present")
#role("Head Coach, Team Australia; Steering Committee, Team Oceania", "European Cybersecurity Challenge & International Cybersecurity Challenge", "Aug 2025 – May 2026")
#role("Vice President and Aotearoa Lead (Partnerships, Sponsorships & Outreach)", "DownUnderCTF Inc.", "Jan 2024 – Present")
#role("Regional Coordinator (Wellington) and Referee", "KiwiBots", "Sep 2021 – Mar 2026")

// ─────────────────────────────────────────────────────────────────────────────
// PROJECTS
// ─────────────────────────────────────────────────────────────────────────────

#section("Projects")

#role("Homelab Kubernetes Cluster", [Self-hosted Kubernetes platform for testing and learning industry best practices. Fully GitOps-managed, with a service mesh, distributed storage and scheduled backups, centralised secrets management, observability and published health metrics. Built on Talos Linux, Argo CD, Cilium, Istio, Envoy Gateway, Rook-Ceph, External Secrets with Infisical, and cert-manager. Source: #link("https://github.com/Darkflame72/home-ops")[github.com/Darkflame72/home-ops]], "")

// ─────────────────────────────────────────────────────────────────────────────
// AWARDS
// ─────────────────────────────────────────────────────────────────────────────

#section("Awards")

#award("3rd Place, Team Oceania (as coach and steering committee member)", "International Cybersecurity Challenge", "2026")
#award("18th Place, UK Cyber Team (as advisor/coach, main competition)", "European Cybersecurity Challenge", "2026")
#award("Supreme Winner and Education & Youth Development Winner (Tūhura Tech)", "Wellington Airport Regional Community Awards, Hutt City", "2025")
#award("3rd Place, Team Australia, guest team (as coach)", "European Cybersecurity Challenge", "2025")
#award("3rd Place, Team Australia, guest team (as competitor)", "European Cybersecurity Challenge", "2024")
#award("1st Place, Grand Champions (as competitor)", "NZ Cyber Security Competition", "2022")

// ─────────────────────────────────────────────────────────────────────────────
// EDUCATION
// ─────────────────────────────────────────────────────────────────────────────

#section("Education")

#entry("BSc in Computer Science", "Te Herenga Waka, Victoria University of Wellington", "Wellington, NZ", "2021 – 2023")[
  - Completed while working at FNZ.
  - Specialisation in Cyber Security and Machine Learning / Artificial Intelligence.
  - Student Representative and Faculty Delegate.
]
