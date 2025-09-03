# GET /v1/orders/{id} — Get an order

**Path param**: `id` (e.g., `ord_9aP2wY`).  
**Auth**: Bearer token.  
**Errors**: 404 if not found; 401, 429, 500.

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" "$BASE_URL/v1/orders/ord_9aP2wY"
```
