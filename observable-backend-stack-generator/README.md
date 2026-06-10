# Observable Backend Stack Generator

> Generate a production observability stack as docker-compose: Prometheus (scrape config + alert rules), Grafana (provisioned datasource + dashboard), Alertmanager and node-exporter. Add db/cache images and it emits the FULL observable backend stack (services + Prometheus exporters, pre-scraped) with a .env.example.

A production **remote MCP server** (monitoring) on [getvda.ai](https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **monitoring** — Generate a production observability stack as docker-compose: Prometheus (scrape config + alert rules), Grafana (provisioned datasource + dashboard), Alertmanager and node-exporter. Add db/cache images and it emits the FULL observable backend stack (services + Prometheus exporters, pre-scraped) with a .env.example.
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

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "app_name": "shop",
  "node_exporter": true,
  "monitor": [
    {
      "name": "api",
      "host": "api",
      "port": 8000,
      "metrics_path": "/metrics"
    }
  ],
  "alerts": {
    "instance_down": true,
    "high_cpu": true,
    "high_memory": true
  },
  "alertmanager": {
    "receiver": "default",
    "slack_webhook": "https://hooks.slack.com/\u2026"
  },
  "persistence": [
    "postgres",
    "redis"
  ]
}
```

Response:

```json
{
  "services": [
    "prometheus",
    "alertmanager",
    "grafana",
    "node-exporter",
    "postgres",
    "postgres-exporter",
    "redis",
    "redis-exporter"
  ],
  "stack": "prometheus+grafana+alertmanager+node-exporter+postgres+redis",
  "files": [
    "docker-compose.yml",
    "prometheus/prometheus.yml",
    "prometheus/alert.rules.yml",
    "alertmanager/alertmanager.yml",
    "grafana/provisioning/datasources/datasource.yml",
    "grafana/dashboards/infra-overview.json"
  ]
}
```

## Links

- Homepage: https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai
- Agent Card (A2A): https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai/.well-known/agent.json
- Governance: https://grafana-grafana-postgres-prom-pro-51839f.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/observable-backend-stack-generator
