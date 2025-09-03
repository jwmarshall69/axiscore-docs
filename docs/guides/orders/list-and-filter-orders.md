# Guide: List & Filter Orders

- Start with `sort=-created_at` for stable pagination.
- Use `page[size]` <= 100 for throughput; follow `links.next` until `meta.next_cursor=null`.
- Combine filters: `status=paid&created_at[gte]=...&created_at[lte]=...`.

> Tip: Treat cursors as opaque; never construct them.

### Postman flow
1. Select the **Local** environment; leave `ACCESS_TOKEN` blank.
2. Send **GET Orders — Page 1** then **GET Orders — Auto paginate (3 hops)**.
3. Negative tests: `page[size]=500` → 400, invalid date range → 422.
