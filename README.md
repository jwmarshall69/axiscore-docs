# AxisCore API Docs

This repository contains **public-facing API documentation** for AxisCore Technologies.

- Format: Markdown + OpenAPI 3.1 (YAML)
- Site generator: **MkDocs** (Material theme)
- Tools: Postman (tests), Newman (CI), OpenAPI lint

## Getting started (local preview)

```bash
# 1) Install mkdocs + material
pip install mkdocs mkdocs-material

# 2) Serve the docs site locally
mkdocs serve
```

## Repo layout

```
axiscore-docs/
  ├─ docs/
  │   ├─ endpoints/
  │   ├─ guides/
  │   └─ style/
  ├─ postman/
  ├─ ci/
  ├─ assets/
  ├─ mkdocs.yml
  └─ openapi.yaml
```

## CI overview
- Lint OpenAPI
- Run Postman collection via Newman on PRs
