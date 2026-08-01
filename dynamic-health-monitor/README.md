# Dynamic Health Monitor

> Auto-discovering health monitoring. Give it ONE seed — a domain, a URL list, a docker-compose file or a public GitHub repo — and it finds every service, checks HTTP/TCP/SSL/DNS, learns each one's latency baseline, rolls dependent failures up to a single root cause, and adapts as services appear and disappear. You never edit a monitoring config.

A production **remote MCP server** (health-monitor) on [getvda.ai](https://health.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **health-monitor** — Auto-discovering health monitoring. Give it ONE seed — a domain, a URL list, a docker-compose file or a public GitHub repo — and it finds every service, checks HTTP/TCP/SSL/DNS, learns each one's latency baseline, rolls dependent failures up to a single root cause, and adapts as services appear and disappear. You never edit a monitoring config.
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

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "action": "discover",
  "seed": "getvda.ai",
  "seed_type": "domain"
}
```

Response:

```json
{
  "action": "discover",
  "discovered": 3,
  "services": [
    {
      "name": "router.getvda.ai",
      "type": "http",
      "target": "https://router.getvda.ai/",
      "discovered_via": "dns_enumeration"
    }
  ],
  "excluded": []
}
```

## Links

- Homepage: https://health.getvda.ai
- Agent Card (A2A): https://health.getvda.ai/.well-known/agent.json
- Governance: https://health.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/dynamic-health-monitor
