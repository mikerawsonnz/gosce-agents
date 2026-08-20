# ai.getvda/anthropic-lm-format-enforcer-mcp-5364ea

> Proxy Gemini (Vertex AI) completions wrapped in OpenTelemetry trace spans; returns the answer plus the trace/span id.

A production **remote MCP server** (traced-gemini) on [getvda.ai](https://anthropic-lm-format-enforcer-mcp-5364ea.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **traced-gemini** — Proxy Gemini (Vertex AI) completions wrapped in OpenTelemetry trace spans; returns the answer plus the trace/span id.
- Composes: anthropic, lm-format-enforcer, mcp, opentelemetry-api, opentelemetry-sdk

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "ai-getvda-anthropic-lm-format-enforcer-mcp-5364ea": {
      "url": "https://anthropic-lm-format-enforcer-mcp-5364ea.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "prompt": "Capital of France in one word.",
  "max_tokens": 32
}
```

Response:

```json
{
  "text": "Paris",
  "model": "gemini-2.5-flash",
  "usage": {
    "input": 9,
    "output": 1
  },
  "trace": {
    "trace_id": "290b52cc\u2026",
    "span_id": "3b0da2f6\u2026"
  }
}
```

## Links

- Homepage: https://anthropic-lm-format-enforcer-mcp-5364ea.getvda.ai
- Agent Card (A2A): https://anthropic-lm-format-enforcer-mcp-5364ea.getvda.ai/.well-known/agent.json
- Governance: https://anthropic-lm-format-enforcer-mcp-5364ea.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/ai-getvda-anthropic-lm-format-enforcer-mcp-5364ea
