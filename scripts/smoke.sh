$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path | Split-Path -Parent

Write-Host "🔎 Linting OpenAPI with Spectral…"
npx -y @stoplight/spectral-cli lint "$root/openapi.yaml"

Write-Host "🧪 Running Postman: Auth…"
newman run "$root/postman/AxisCore Auth.postman_collection.json" `
  -e "$root/postman/env/Local.postman_environment.json"

Write-Host "🧪 Running Postman: Orders…"
newman run "$root/postman/AxisCore Orders.postman_collection.json" `
  -e "$root/postman/env/Local.postman_environment.json"

Write-Host "✅ Smoke passed: OpenAPI lint + Postman collections green."
 
