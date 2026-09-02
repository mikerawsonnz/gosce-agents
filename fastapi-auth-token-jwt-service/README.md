# FastAPI Auth Token JWT Service

> Hash passwords with bcrypt and issue/verify JWT session tokens.

A production **remote MCP server** (auth) on [getvda.ai](https://fastapi-auth-token-jwt-service.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **auth** — Hash passwords with bcrypt and issue/verify JWT session tokens.
- Composes: authlib, bcrypt, python-jose

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "fastapi-auth-token-jwt-service": {
      "url": "https://fastapi-auth-token-jwt-service.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "action": "login",
  "username": "alice",
  "password": "hunter2",
  "hash": "$2b$12$\u2026"
}
```

Response:

```json
{
  "authenticated": true,
  "token": "eyJhbGciOiJIUzI1Ni\u2026",
  "expires_in": 3600
}
```

## Links

- Homepage: https://fastapi-auth-token-jwt-service.getvda.ai
- Agent Card (A2A): https://fastapi-auth-token-jwt-service.getvda.ai/.well-known/agent.json
- Governance: https://fastapi-auth-token-jwt-service.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/fastapi-auth-token-jwt-service
