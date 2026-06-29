# Postgres + Grafana Stack Generator

> Generate a production-ready docker-compose.yml for a multi-service infrastructure stack — messaging (Kafka/ZooKeeper, RabbitMQ, NATS), object storage (MinIO), search (Elasticsearch/OpenSearch), databases, caches, web servers and auth (Keycloak/Vault). Every service is health-checked, on a private bridge network, with named volumes and a matching .env.example. Kafka auto-wires its required ZooKeeper.

A production **remote MCP server** (infra-stack) on [getvda.ai](https://grafana-grafana-grafana-loki-post-452481.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **infra-stack** — Generate a production-ready docker-compose.yml for a multi-service infrastructure stack — messaging (Kafka/ZooKeeper, RabbitMQ, NATS), object storage (MinIO), search (Elasticsearch/OpenSearch), databases, caches, web servers and auth (Keycloak/Vault). Every service is health-checked, on a private bridge network, with named volumes and a matching .env.example. Kafka auto-wires its required ZooKeeper.
- Composes: grafana/grafana, grafana/loki, postgres

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "postgres-grafana-stack-generator": {
      "url": "https://grafana-grafana-grafana-loki-post-452481.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "app_name": "events",
  "images": [
    "confluentinc/cp-kafka",
    "confluentinc/cp-zookeeper",
    "postgres",
    "minio/minio",
    "redis"
  ]
}
```

Response:

```json
{
  "services": [
    "zookeeper",
    "kafka",
    "postgres",
    "minio",
    "redis"
  ],
  "stack": "zookeeper+kafka+postgres+minio+redis",
  "compose": "name: events\nservices:\n  zookeeper:\n    image: confluentinc/cp-zookeeper:7.6.1\n    ...",
  "files": [
    "docker-compose.yml",
    ".env.example"
  ]
}
```

## Links

- Homepage: https://grafana-grafana-grafana-loki-post-452481.getvda.ai
- Agent Card (A2A): https://grafana-grafana-grafana-loki-post-452481.getvda.ai/.well-known/agent.json
- Governance: https://grafana-grafana-grafana-loki-post-452481.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/postgres-grafana-stack-generator
