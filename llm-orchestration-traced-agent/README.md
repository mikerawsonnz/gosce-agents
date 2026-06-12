# LLM Orchestration Traced Agent

> Run a prompt through a LangChain (system + human) chain over Gemini on Vertex AI; optional LangSmith tracing.

A production **remote MCP server** (langchain-llm) on [getvda.ai](https://cryptography-langchain-core-mcp-22c862.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **langchain-llm** — Run a prompt through a LangChain (system + human) chain over Gemini on Vertex AI; optional LangSmith tracing.
- Composes: cryptography, langchain-core, mcp, opentelemetry-api, opentelemetry-sdk, python-jose

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "llm-orchestration-traced-agent": {
      "url": "https://cryptography-langchain-core-mcp-22c862.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "prompt": "List 3 OSI-approved licenses.",
  "system": "Be terse.",
  "max_tokens": 64
}
```

Response:

```json
{
  "output": "MIT, Apache-2.0, GPLv3",
  "model": "gemini-2.5-flash",
  "framework": "langchain",
  "provider": "vertex-ai"
}
```

## Links

- Homepage: https://cryptography-langchain-core-mcp-22c862.getvda.ai
- Agent Card (A2A): https://cryptography-langchain-core-mcp-22c862.getvda.ai/.well-known/agent.json
- Governance: https://cryptography-langchain-core-mcp-22c862.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/llm-orchestration-traced-agent
