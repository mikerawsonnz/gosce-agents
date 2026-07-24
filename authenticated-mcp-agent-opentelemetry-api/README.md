# Authenticated MCP Agent (Opentelemetry Api)

> JWT-gated LLM gateway: authenticate (bcrypt/JWT), then run a LangChain-on-Vertex Gemini completion. Unauthenticated calls are rejected.

A production **remote MCP server** (auth-llm) on [getvda.ai](https://bcrypt-langchain-core-mcp-dc2f7b.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **auth-llm** — JWT-gated LLM gateway: authenticate (bcrypt/JWT), then run a LangChain-on-Vertex Gemini completion. Unauthenticated calls are rejected.
- Composes: bcrypt, langchain-core, mcp, openai, opentelemetry-api

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "authenticated-mcp-agent-opentelemetry-api": {
      "url": "https://bcrypt-langchain-core-mcp-dc2f7b.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "action": "ask",
  "token": "eyJhbGciOiJIUzI1Ni\u2026",
  "prompt": "Capital of France?",
  "system": "One word."
}
```

Response:

```json
{
  "authenticated": true,
  "subject": "alice",
  "output": "Paris",
  "model": "gemini-2.5-flash"
}
```

## Links

- Homepage: https://bcrypt-langchain-core-mcp-dc2f7b.getvda.ai
- Agent Card (A2A): https://bcrypt-langchain-core-mcp-dc2f7b.getvda.ai/.well-known/agent.json
- Governance: https://bcrypt-langchain-core-mcp-dc2f7b.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/authenticated-mcp-agent-opentelemetry-api
