# ai.getvda/bcrypt-mcp-openai-3b46a0

> JWT-gated LLM gateway: authenticate (bcrypt/JWT), then run a LangChain-on-Vertex Gemini completion. Unauthenticated calls are rejected.

A production **remote MCP server** (auth-llm) on [getvda.ai](https://bcrypt-mcp-openai-3b46a0.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **auth-llm** — JWT-gated LLM gateway: authenticate (bcrypt/JWT), then run a LangChain-on-Vertex Gemini completion. Unauthenticated calls are rejected.
- Composes: bcrypt, mcp, openai, opentelemetry-sdk, python-jose

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "ai-getvda-bcrypt-mcp-openai-3b46a0": {
      "url": "https://bcrypt-mcp-openai-3b46a0.getvda.ai/mcp",
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

- Homepage: https://bcrypt-mcp-openai-3b46a0.getvda.ai
- Agent Card (A2A): https://bcrypt-mcp-openai-3b46a0.getvda.ai/.well-known/agent.json
- Governance: https://bcrypt-mcp-openai-3b46a0.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/ai-getvda-bcrypt-mcp-openai-3b46a0
