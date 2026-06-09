# Authenticated LLM Traced Agent

> Google-OAuth-gated LLM gateway: verify a Google ID token, then run a Gemini (Vertex AI) completion for the verified caller.

A production **remote MCP server** (oauth-llm) on [getvda.ai](https://cryptography-google-auth-oauthlib-29bc28.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **oauth-llm** — Google-OAuth-gated LLM gateway: verify a Google ID token, then run a Gemini (Vertex AI) completion for the verified caller.
- Composes: cryptography, google-auth-oauthlib, langchain-openai, mcp, openai, opentelemetry-api, opentelemetry-sdk

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "authenticated-llm-traced-agent": {
      "url": "https://cryptography-google-auth-oauthlib-29bc28.getvda.ai/mcp",
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
  "id_token": "<google id token>",
  "prompt": "Summarise the MIT license in one line."
}
```

Response:

```json
{
  "authenticated": true,
  "email": "user@example.com",
  "output": "A permissive license\u2026",
  "model": "gemini-2.5-flash"
}
```

## Links

- Homepage: https://cryptography-google-auth-oauthlib-29bc28.getvda.ai
- Agent Card (A2A): https://cryptography-google-auth-oauthlib-29bc28.getvda.ai/.well-known/agent.json
- Governance: https://cryptography-google-auth-oauthlib-29bc28.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/authenticated-llm-traced-agent
