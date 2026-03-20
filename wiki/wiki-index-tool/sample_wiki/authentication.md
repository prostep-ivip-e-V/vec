# Authentication

## Overview

The VEC platform supports multiple authentication methods to secure access
to all services. Authentication is required for all API endpoints and
the web management console.

For API-specific details, see the [API Reference](api-reference.md).
For production hardening, consult the [Security Guide](security-guide.md).
For all configuration parameters, see [Configuration Reference](configuration.md).

## OAuth2 Configuration

OAuth2 is the recommended authentication method for production deployments.
The VEC uses the authorization code flow with PKCE for web applications
and the client credentials flow for service-to-service communication.

The default token expiration is 3600 seconds (1 hour). Refresh tokens
are valid for 30 days. All tokens use RS256 signing by default.

### Token Endpoints

The authorization server exposes the following endpoints:

- `/auth/authorize` — Start the authorization code flow
- `/auth/token` — Exchange codes for tokens
- `/auth/revoke` — Revoke an active token
- `/auth/userinfo` — Get the authenticated user's profile

### Scopes

Available scopes are: `read`, `write`, `admin`, and `superadmin`.
The `superadmin` scope grants access to cluster management operations.

## API Key Authentication

For development and testing, API keys can be used instead of OAuth2.
API keys are passed in the `X-API-Key` header.

API keys do not expire by default, but administrators can set a maximum
lifetime of up to 365 days in the security configuration.

## Session Management

Web console sessions use HTTP-only secure cookies. The default session
timeout is 30 minutes of inactivity. Sessions can be extended by
setting `session.max_lifetime` in the configuration file.
