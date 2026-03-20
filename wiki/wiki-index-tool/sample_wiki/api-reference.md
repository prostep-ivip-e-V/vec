# API Reference

## Authentication

All API requests must be authenticated. The VEC API supports OAuth2
bearer tokens and API keys. See [Authentication](authentication.md) for
setup instructions, and the [Deployment Guide](deployment-guide.md) for
infrastructure requirements.

### Bearer Tokens

Include the token in the Authorization header:
```
Authorization: Bearer <token>
```

Tokens expire after 7200 seconds (2 hours) and must be refreshed using
the refresh token endpoint at `/api/v2/auth/refresh`.

### API Keys

API keys are sent via the `Authorization` header with the `ApiKey` scheme:
```
Authorization: ApiKey <key>
```

API keys expire after 90 days by default. This can be configured in the
admin panel under Security > API Keys.

## Rate Limiting

The API enforces rate limits per authentication identity:

- Standard tier: 100 requests per minute
- Premium tier: 1000 requests per minute
- Enterprise tier: 10000 requests per minute

Rate limit headers are included in every response.

## Error Handling

The API uses standard HTTP status codes. All error responses include
a JSON body with `error_code` and `message` fields.

### Common Error Codes

- `AUTH_EXPIRED` — Token has expired, refresh and retry
- `AUTH_INVALID` — Invalid credentials
- `RATE_LIMITED` — Too many requests, check Retry-After header
- `NOT_FOUND` — Resource does not exist
