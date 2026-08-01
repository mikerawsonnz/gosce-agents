# MongoDB + Redis Compose Generator (Mongo Express)

> Generate a production-ready docker-compose.yml for a Postgres + Redis (database + cache) stack — health checks, named volumes, PgBouncer pooling, Redis maxmemory/persistence policy, bridge networking and a matching .env.example.

A production **remote MCP server** (compose) on [getvda.ai](https://mongodb-redis-compose-generator-mongo-express.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **compose** — Generate a production-ready docker-compose.yml for a Postgres + Redis (database + cache) stack — health checks, named volumes, PgBouncer pooling, Redis maxmemory/persistence policy, bridge networking and a matching .env.example.
- Composes: mongo, mongo-express, redis

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "mongodb-redis-compose-generator-mongo-express": {
      "url": "https://mongodb-redis-compose-generator-mongo-express.getvda.ai/mcp",
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
  "language": "python",
  "framework": "fastapi",
  "persistence": [
    "postgres",
    "redis"
  ],
  "postgres": {
    "version": "16",
    "db": "shop",
    "max_connections": 100
  },
  "redis": {
    "version": "7",
    "maxmemory": "256mb",
    "policy": "allkeys-lru",
    "persistence": "aof"
  }
}
```

Response:

```json
{
  "services": [
    "postgres",
    "pgbouncer",
    "redis"
  ],
  "stack": "postgres+pgbouncer+redis",
  "compose": "name: shop\nservices:\n  postgres:\n    image: postgres:16-alpine\n    ...",
  "env_example": "POSTGRES_USER=appuser\nPOSTGRES_PASSWORD=\u2026\nREDIS_PASSWORD=\u2026"
}
```

## Links

- Homepage: https://mongodb-redis-compose-generator-mongo-express.getvda.ai
- Agent Card (A2A): https://mongodb-redis-compose-generator-mongo-express.getvda.ai/.well-known/agent.json
- Governance: https://mongodb-redis-compose-generator-mongo-express.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/mongodb-redis-compose-generator-mongo-express
