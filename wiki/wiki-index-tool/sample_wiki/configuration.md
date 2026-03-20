# Configuration Reference

## Authentication Settings

### OAuth2

| Parameter | Default | Description |
|-----------|---------|-------------|
| `auth.oauth2.token_lifetime` | `3600` | Access token lifetime in seconds |
| `auth.oauth2.refresh_lifetime` | `2592000` | Refresh token lifetime in seconds (30 days) |
| `auth.oauth2.signing_algorithm` | `RS256` | JWT signing algorithm |
| `auth.oauth2.issuer` | `https://auth.vec.local` | Token issuer URL |

### API Keys

| Parameter | Default | Description |
|-----------|---------|-------------|
| `auth.apikey.max_lifetime` | `0` | Max API key lifetime in days (0 = no limit) |
| `auth.apikey.header_name` | `X-API-Key` | HTTP header for API key authentication |

### Sessions

| Parameter | Default | Description |
|-----------|---------|-------------|
| `session.timeout` | `1800` | Session inactivity timeout in seconds (30 min) |
| `session.max_lifetime` | `86400` | Maximum session lifetime in seconds (24 hours) |
| `session.cookie_name` | `VEC_SESSION` | Name of the session cookie |

## Cluster Settings

### Node Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `cluster.node_id` | auto | Unique node identifier |
| `cluster.discovery` | `multicast` | Discovery method: multicast, static, dns |
| `cluster.port` | `9300` | Inter-node communication port |

## Logging

### Audit Log

| Parameter | Default | Description |
|-----------|---------|-------------|
| `audit.enabled` | `true` | Enable audit logging |
| `audit.retention_days` | `90` | Audit log retention period in days |
| `audit.include_body` | `false` | Include request/response bodies |
