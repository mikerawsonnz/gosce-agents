# RabbitMQ + Elasticsearch + Postgres Stack Generator (Mongo)

> Generate a production-ready docker-compose.yml for a multi-service infrastructure stack — messaging (Kafka/ZooKeeper, RabbitMQ, NATS), object storage (MinIO), search (Elasticsearch/OpenSearch), databases, caches, web servers and auth (Keycloak/Vault). Every service is health-checked, on a private bridge network, with named volumes and a matching .env.example. Kafka auto-wires its required ZooKeeper.

A production **remote MCP server** (infra-stack) on [getvda.ai](https://rabbitmq-elasticsearch-postgres-stack-generator-mongo.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **infra-stack** — Generate a production-ready docker-compose.yml for a multi-service infrastructure stack — messaging (Kafka/ZooKeeper, RabbitMQ, NATS), object storage (MinIO), search (Elasticsearch/OpenSearch), databases, caches, web servers and auth (Keycloak/Vault). Every service is health-checked, on a private bridge network, with named volumes and a matching .env.example. Kafka auto-wires its required ZooKeeper.
- Composes: elasticsearch/elasticsearch, mongo, postgres, rabbitmq

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "rabbitmq-elasticsearch-postgres-stack-generator-mongo": {
      "url": "https://rabbitmq-elasticsearch-postgres-stack-generator-mongo.getvda.ai/mcp",
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

- Homepage: https://rabbitmq-elasticsearch-postgres-stack-generator-mongo.getvda.ai
- Agent Card (A2A): https://rabbitmq-elasticsearch-postgres-stack-generator-mongo.getvda.ai/.well-known/agent.json
- Governance: https://rabbitmq-elasticsearch-postgres-stack-generator-mongo.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/rabbitmq-elasticsearch-postgres-stack-generator-mongo
