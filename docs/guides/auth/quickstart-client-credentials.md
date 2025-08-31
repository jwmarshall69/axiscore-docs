# Quickstart: Client Credentials

1. Get your **CLIENT_ID** and **CLIENT_SECRET** from the AxisCore console.
2. Base64-encode `CLIENT_ID:CLIENT_SECRET` → `Authorization: Basic …`.
3. Request a token:

   ```bash
   curl -s -X POST "$BASE_URL/v1/auth/token"      -H "Authorization: Basic $B64"      -H "Content-Type: application/x-www-form-urlencoded"      --data "grant_type=client_credentials"
   ```

4. Use the token:

   ```bash
   curl -H "Authorization: Bearer $ACCESS_TOKEN" "$BASE_URL/v1/health"
   ```

5. Handle 401/429 with retries and token refresh.
