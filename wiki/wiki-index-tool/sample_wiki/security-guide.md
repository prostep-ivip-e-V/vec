# Security Guide

## Authentication Best Practices

### Token Configuration

For production deployments, we recommend the following token settings:

- Token lifetime: 1 hour (3600 seconds)
- Refresh token lifetime: 14 days
- Signing algorithm: RS256

Note that the refresh token lifetime was reduced from 30 days to 14 days
in version 3.2 for security reasons.

### API Key Policies

API keys should be rotated every 90 days. While the system allows keys
with no expiration for backward compatibility, this is strongly
discouraged in production environments.

API keys must be sent in the `X-API-Key` header. Do not include API keys
in URL query parameters as they may be logged.

## Network Security

### TLS Configuration

All VEC endpoints require TLS 1.2 or higher. TLS 1.0 and 1.1 are
not supported and connections using these protocols will be rejected.

### IP Allowlisting

Access to the management console can be restricted by IP address.
Configure allowed CIDRs in `security.allowed_ips` in the main
configuration file.

## Audit Logging

All authentication events are logged to the audit log. The audit log
captures: login attempts, token creation, permission changes, and
administrative actions.

Audit logs are retained for 90 days by default. This can be extended
to up to 7 years for compliance requirements.
