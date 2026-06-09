# Observable Backend Stack Generator

> Observable Backend Stack Generator

A production **remote MCP server** (integration) on [getvda.ai](https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **integration** — Observable Backend Stack Generator
- Composes: grafana/grafana, postgres, prom/prometheus, redis

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "observable-backend-stack-generator": {
      "url": "https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Links

- Homepage: https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai
- Agent Card (A2A): https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai/.well-known/agent.json
- Governance: https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/observable-backend-stack-generator
