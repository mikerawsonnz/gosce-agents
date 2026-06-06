# GOSCE Portfolio Router

> Single entry point for the GOSCE portfolio: routes orchestrators to verified agents by capability, with real example output from the router's own /selftest probes (a quality-assured broker, not a directory).

A production **remote MCP server** (router) on [getvda.ai](https://router.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **router** — Single entry point for the GOSCE portfolio: routes orchestrators to verified agents by capability, with real example output from the router's own /selftest probes (a quality-assured broker, not a directory).
- Composes: composed integration

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "gosce-portfolio-router": {
      "url": "https://router.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "capability": "auth"
}
```

Response:

```json
{
  "query": "auth",
  "results": [
    {
      "rank": 1,
      "display_name": "FastAPI Auth Token Service",
      "endpoint": "https://bcrypt-python-jose-d0e0d0.getvda.ai/a2a/",
      "verified_latency_ms": 203,
      "example_response": {
        "action": "hash",
        "hash": "$2b$12$\u2026"
      }
    }
  ]
}
```

## Links

- Homepage: https://router.getvda.ai
- Agent Card (A2A): https://router.getvda.ai/.well-known/agent.json
- Governance: https://router.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/gosce-portfolio-router
