# Structured Output Agent (Instructor)

> Turn a prompt + a field schema into validated, typed JSON (Instructor over Gemini 2.5 Flash on Vertex AI).

A production **remote MCP server** (structured-output) on [getvda.ai](https://structured-output-agent-instructor.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **structured-output** — Turn a prompt + a field schema into validated, typed JSON (Instructor over Gemini 2.5 Flash on Vertex AI).
- Composes: instructor, litellm

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "structured-output-agent-instructor": {
      "url": "https://structured-output-agent-instructor.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "prompt": "Extract the person: Ada Lovelace, age 36, lives in London.",
  "schema": {
    "fields": {
      "name": "string",
      "age": "integer",
      "city": "string"
    }
  }
}
```

Response:

```json
{
  "structured": {
    "name": "Ada Lovelace",
    "age": 36,
    "city": "London"
  },
  "model": "gemini-2.5-flash",
  "provider": "vertex-ai"
}
```

## Links

- Homepage: https://structured-output-agent-instructor.getvda.ai
- Agent Card (A2A): https://structured-output-agent-instructor.getvda.ai/.well-known/agent.json
- Governance: https://structured-output-agent-instructor.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/structured-output-agent-instructor
