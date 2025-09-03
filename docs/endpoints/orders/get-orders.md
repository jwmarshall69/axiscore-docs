# GET /v1/orders — List orders

**Auth**: Bearer token. **Rate limit**: 60/min.

## Query parameters
- `page[size]` (1–100, default 25), `page[after]` (opaque cursor)
- Filters: `status`, `created_at[gte]`, `created_at[lte]`, `customer_id`
- Sort: `sort=created_at|-created_at|total|-total`

## Examples
```bash
# Page 1, newest first
curl -H "Authorization: Bearer $ACCESS_TOKEN"   "$BASE_URL/v1/orders?sort=-created_at&page[size]=25"

# Next page using cursor
curl -H "Authorization: Bearer $ACCESS_TOKEN"   "$BASE_URL/v1/orders?page[after]=$NEXT_CURSOR"
```

## Responses
200 returns `data[]`, `meta.next_cursor`, optional `links.next`.  
Errors: 400 invalid `page[size]`, 422 invalid filter combo, 401, 429, 500.
