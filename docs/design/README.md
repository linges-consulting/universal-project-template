# Design system

**Purpose:** Define consistent product design principles and governance for projects with a user interface. **Audience:** Designers, frontend and client engineers, reviewers, and AI agents. **Maintenance:** Design and frontend owners update this document when approved system-level patterns change. Exact values should live in versioned design tokens or component code once those exist. **Related:** `../requirements/README.md`, `../architecture/README.md`, `../development/guardrails.md`.

If the project has no user interface, mark this document not applicable rather than inventing a design system.

## Product character and principles

- Intended experience: `[NOT_DEFINED]`
- Design principles: `[NOT_DEFINED]`
- Supported platforms and input modes: `[NOT_DEFINED]`
- Authoritative design source or asset library: `[NOT_SELECTED]`

## Foundations

Document the approved token source and usage rules for:

- Color and contrast
- Typography
- Spacing and sizing
- Layout grids and responsive breakpoints
- Borders, radii, elevation, and surfaces
- Motion and reduced-motion behavior
- Iconography and imagery

Do not place speculative token values here. Link to the machine-readable token source when one is implemented.

## Components and interaction

- Component implementation or catalog: `[NOT_SELECTED]`
- Required states: default, hover, focus, active, disabled, loading, empty, error, and success as applicable
- Form behavior and validation: `[NOT_DEFINED]`
- Navigation and information architecture: `[NOT_DEFINED]`
- Content, terminology, and voice: `[NOT_DEFINED]`

Prefer existing approved components. A new pattern must solve a documented need, meet accessibility requirements, cover relevant states, and be reviewed before becoming reusable system guidance.

## Accessibility and quality

- Accessibility target: `[NOT_SELECTED — define applicable standard and level]`
- Keyboard and focus expectations: `[NOT_DEFINED]`
- Screen-reader and semantic requirements: `[NOT_DEFINED]`
- Localization, zoom, reflow, and contrast expectations: `[NOT_DEFINED]`
- Visual and interaction validation process: `[NOT_DEFINED]`

## Exceptions and maintenance

Record intentional exceptions with their owner, scope, rationale, review date, and removal or standardization plan. Significant, durable design-system choices may require an ADR; routine token or component additions generally do not.

