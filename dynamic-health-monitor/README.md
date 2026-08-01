# Dynamic Health Monitor

> Dynamic Health Monitor

A production **remote MCP server** (integration) on [getvda.ai](https://health.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **integration** — Dynamic Health Monitor
- Composes: gosce-health

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "dynamic-health-monitor": {
      "url": "https://health.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Links

- Homepage: https://health.getvda.ai
- Agent Card (A2A): https://health.getvda.ai/.well-known/agent.json
- Governance: https://health.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/dynamic-health-monitor
