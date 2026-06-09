# Postgres + Redis Compose Generator

> Postgres + Redis Compose Generator

A production **remote MCP server** (integration) on [getvda.ai](https://postgres-redis-10a16c.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **integration** — Postgres + Redis Compose Generator
- Composes: postgres, redis

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "postgres-redis-compose-generator": {
      "url": "https://postgres-redis-10a16c.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Links

- Homepage: https://postgres-redis-10a16c.getvda.ai
- Agent Card (A2A): https://postgres-redis-10a16c.getvda.ai/.well-known/agent.json
- Governance: https://postgres-redis-10a16c.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/postgres-redis-compose-generator
