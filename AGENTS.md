# CH Core Implementation Guide Repository Guidelines

## Overview
- Main repository for the CH Core (R4) FHIR Implementation Guide.
- Published at http://fhir.ch/ig/ch-core/ as an HL7 Switzerland FHIR Implementation Guide.
- Built with the HL7 FHIR IG Publisher and FSH/SUSHI.
- Defines core FHIR profiles, extensions, and resources for Switzerland.
- Canonical URL: http://fhir.ch/ig/ch-core

## Project Structure & Module Organization
- `input/`: IG content (FSH definitions, markdown pages, examples)
  - `input/fsh/`: FHIR Shorthand (FSH) definitions
    - `aliases.fsh`: Commonly used aliases
    - `extensions/`: Swiss-specific FHIR extensions (eCH standards, EPR, etc.)
    - `profiles-datatypes/`: Profile definitions for data types
    - `profiles-resources/`: Profile definitions for resources
    - `invariants/`: Validation rules and constraints
    - `instances/`: Example instances
  - `input/pagecontent/`: Markdown content for IG pages
  - `input/images/`: Images and diagrams
  - `input/includes/`: Template includes
- `sushi-config.yaml`: SUSHI configuration and IG metadata.
- `ig.ini`: IG Publisher configuration.
- `template/`: HL7 CH IG Publisher template.
- `scripts/`: IG build/update helpers (`_genonce.sh`, `_updatePublisher.sh`, `_gencontinuous.sh`).
- `ballots/`: Ballot documentation for major releases.
- Generated: `fsh-generated/`, `output/`, `temp/`. Do not edit by hand.

## Build, Test, and Development Commands
- Prerequisites: Java 11+, Jekyll (for IG building)
- `npm run update:publisher`: Download/refresh HL7 IG Publisher (requires `curl`, Java).
- `npm run build:ig`: Build the Implementation Guide once (runs `./scripts/_genonce.sh`).
- `npm run build:ig:continuous`: Rebuild on change (runs `./scripts/_gencontinuous.sh`).
- `npm run serve:ig`: Serve built IG from `output/` directory.
- `npm run open:ig`: Open `output/index.html` in browser.
- Manual build: `java -Xms3550m -Xmx3550m -jar publisher.jar -ig ig.ini`

## Coding Style & Naming Conventions
- FSH files: 2-space indentation, kebab-case for file names.
- Profile IDs: Use `ch-core-` prefix (e.g., `ch-core-patient`, `ch-core-practitioner`).
- Extension IDs: Use `ch-ext-` prefix (e.g., `ch-ext-ech-11-name`).
- Example instances: Clear, descriptive names reflecting Swiss use cases.
- Keep generated folders untracked in changes; edit sources only (`input/`, `sushi-config.yaml`).

## Dependencies
- `ch.fhir.ig.ch-term`: CH Terminology (Swiss value sets and code systems)
- `hl7.terminology.r4`: HL7 terminology resources
- `hl7.fhir.uv.extensions.r4`: FHIR universal extensions

## Testing Guidelines
- Add example instances in `input/fsh/instances/` to demonstrate profile usage.
- Validate examples against defined profiles before committing.
- Validate new/changed test files with AJV: `npm run validate` (if validation tooling is available).

## Commit & Pull Request Guidelines
- When creating a new PR or commit first run npm build:ig, this can take a few minutes, only commit when the error count is not bigger than 1, analyze output/qa.html for detailed error message
- Branch names: Use underscores instead of slashes (e.g., `issue123_fix_extension` not `issue/123/fix-extension`). Slashes in branch names can cause issues with ci-build.
- Commits: Concise, imperative summaries (e.g., "Fix name extension binding strength"). Claude needs not to be mentioned.
- Reference issues in commits (e.g., "#381").
- Update changelog in input/pagecontent/changelog.md
- PRs: Include purpose, scope, linked issues, keep it short, Claude needs not to be mentioned as co-author.

## Security & Configuration Tips
- IG build contacts `tx.fhir.org` for terminology; offline builds pass `-tx n/a`.
- Need read access to https://github.com/HL7/fhir-ig-publisher/ and https://raw.githubusercontent.com/
- Do not embed test data with real patient information.

## Swiss-Specific Considerations
- **eCH Standards**: Follow Swiss eGovernment standards for data structures.
- **EPR Compliance**: EPR-specific profiles must align with Swiss EPR requirements.
- **Language Support**: Content may include German, French, Italian, and English.
- **Identifier Validation**: Use defined invariants for Swiss identifier formats.
- **BFS Statistics**: Medical statistics follow Swiss Federal Statistical Office (BFS) requirements.

## Resources & Links
- Published IG: http://fhir.ch/ig/ch-core/
- HL7 Switzerland: https://www.hl7.ch/
- Version history: http://fhir.ch/ig/ch-core/history.html
- CI Build: http://build.fhir.org/ig/hl7ch/ch-core/