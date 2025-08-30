# Contributing

We use a Docs-as-Code workflow with GitHub PRs.

## Branch & PR
- Create an issue per task and label it: `docs`, `priority`, `week-{N}`.
- Branch naming: `docs/week-{N}/{feature}`.
- Submit a PR linking the issue.

## Review checklist
- Accuracy: parameters, auth flow, and responses match implementation.
- Completeness: rate limits, headers, and error schema included.
- Clarity: quickstart is actionable; examples copy/pasteable.
- Consistency: style, naming, and paths follow style guide.
- Testability: Postman tests assert key behaviors; CI green.

## Local checks
- Validate `openapi.yaml` builds.
- Run `mkdocs serve` and review pages.
- Run the Postman collection with Newman if applicable.
