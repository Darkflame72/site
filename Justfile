_default:
    @just --list

# Compile the CV PDF from Typst source
cv:
    typst compile --creation-timestamp $(date +%s) cv/resume.typ static/cv.pdf

# Watch CV source and recompile on change
cv-watch:
    typst watch --creation-timestamp $(date +%s) cv/resume.typ static/cv.pdf

# Build the full site (CV then Hugo)
build: cv
    hugo --minify

# Start Hugo dev server (builds CV first)
dev: cv
    hugo server

# Remove all generated outputs
clean:
    rm -f static/cv.pdf
    rm -rf public/ resources/
