# Integration Agent

> 

A production **remote MCP server** (drift-observatory) on [getvda.ai](https://drift.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **drift-observatory** — 
- Composes: gosce-drift

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "integration-agent": {
      "url": "https://drift.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Links

- Homepage: https://drift.getvda.ai
- Agent Card (A2A): https://drift.getvda.ai/.well-known/agent.json
- Governance: https://drift.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/integration-agent
