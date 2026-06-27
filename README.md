# darkflame.dev

Personal site and CV for Leon Bowie. Built with [Hugo](https://gohugo.io) (site) and [Typst](https://typst.app) (CV). Deployed to GitHub Pages via Actions.

## Structure

```
cv/            Typst CV source
  resume.typ   CV content
  fonts/       Roboto + FontAwesome used by Typst

config.toml    Hugo site config
content/       Hugo content (empty — single-page site)
static/        Static assets served by Hugo
themes/        awesome-identity Hugo theme

Justfile       Build tasks
shell.nix      Nix dev shell (Typst + Hugo + just)
```

`static/cv.pdf` is generated from `cv/resume.typ` and not committed.

## Local development

Enter the Nix dev shell to get all tools:

```bash
nix-shell
```

Then:

```
just dev        build CV + start Hugo dev server
just build      build CV + build Hugo site (output in public/)
just cv         compile CV only → static/cv.pdf
just cv-watch   recompile CV on every save
just clean      remove generated files
```

## Deployment

Pushing to `main` triggers the GitHub Actions workflow which:
1. Compiles `cv/resume.typ` → `static/cv.pdf` using Typst
2. Builds the Hugo site with `--minify`
3. Deploys `public/` to Cloudflare Pages

Requires `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID` set as repository secrets.
