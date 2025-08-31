# POST /v1/auth/token — Client Credentials

**Purpose**: Exchange client credentials for an access token.  
**Rate limit**: 60/min.  
**Auth to this endpoint**: `Authorization: Basic base64(CLIENT_ID:CLIENT_SECRET)`

## Request

Content-Type: `application/x-www-form-urlencoded`

| Field       | Type   | Required | Notes                    |
|-------------|--------|----------|--------------------------|
| grant_type  | string | yes      | `client_credentials`     |
| scope       | string | no       | space-delimited scopes   |

### Example

```bash
curl -X POST "$BASE_URL/v1/auth/token"  -H "Authorization: Basic $B64"  -H "Content-Type: application/x-www-form-urlencoded"  --data "grant_type=client_credentials&scope=read:orders write:orders"
```

## Responses

- **200**: token payload (see below)  
- **401**: invalid client credentials  
- **429**: too many requests; use `Retry-After`  
- **500**: server error

```json
{ "access_token":"…","token_type":"Bearer","expires_in":3600,"scope":"read:orders write:orders" }
```

### Error schema

```json
{ "code":"rate_limited","message":"Too many requests","request_id":"rq_..." }
```

</details>

## Notes & Edge Cases

- Unknown scopes are ignored; granted scopes are returned in `scope`.
- Respect `X-RateLimit-Reset` clock skew.
