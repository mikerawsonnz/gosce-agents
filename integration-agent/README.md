# Integration Agent

> Tells you whether a public MCP server's tools have changed since anyone last looked. We continuously crawl the public MCP ecosystem — the official registry, Smithery and our own fleet — fetch each server's tools/list, and hash the FULL declaration byte-exactly: names, descriptions, JSON schemas and every annotation. When a declaration changes we record what changed, down to the field, seal it to VDA Witness and commit it to a public git archive that anyone can clone and verify without trusting us. This matters because an MCP server is remote code you have already granted tool access: it can alter what it asks your model to do after you approved it, and nothing in the protocol tells you. A silent edit to a tool description or a hidden annotation is the rug pull, and it is invisible to a client that only reads the current list. Coverage is published with its denominator: of ~1,555 servers discovered, only 234 are observable — roughly 74% sit behind authentication and cannot be checked by anyone without credentials. LIMIT, stated plainly: we observe DECLARATIONS, not behaviour. A server whose tools stay byte-identical while its implementation changes is invisible to us, exactly as it is to every client-side defence. If you need behavioural assurance this is not it.

A production **remote MCP server** (drift-observatory) on [getvda.ai](https://drift.getvda.ai). Speaks the open **A2A** (`message/send`) and **MCP** (`invoke` tool) protocols. Discovery (`initialize`, `tools/list`) is free; execution is metered via Nevermined x402 micropayments.

## Capabilities

- **drift-observatory** — Tells you whether a public MCP server's tools have changed since anyone last looked. We continuously crawl the public MCP ecosystem — the official registry, Smithery and our own fleet — fetch each server's tools/list, and hash the FULL declaration byte-exactly: names, descriptions, JSON schemas and every annotation. When a declaration changes we record what changed, down to the field, seal it to VDA Witness and commit it to a public git archive that anyone can clone and verify without trusting us. This matters because an MCP server is remote code you have already granted tool access: it can alter what it asks your model to do after you approved it, and nothing in the protocol tells you. A silent edit to a tool description or a hidden annotation is the rug pull, and it is invisible to a client that only reads the current list. Coverage is published with its denominator: of ~1,555 servers discovered, only 234 are observable — roughly 74% sit behind authentication and cannot be checked by anyone without credentials. LIMIT, stated plainly: we observe DECLARATIONS, not behaviour. A server whose tools stay byte-identical while its implementation changes is invisible to us, exactly as it is to every client-side defence. If you need behavioural assurance this is not it.
- Composes: gosce-drift

## Connect (streamable-http)

```json
{
  "mcpServers": {
    "integration-agent": {
      "url": "https://drift.getvda.ai/mcp",
      "transport": "streamable-http"
    }
  }
}
```

## Example

Request (`invoke` tool `input`, or A2A message text):

```json
{
  "action": "check",
  "url": "https://router.getvda.ai/mcp"
}
```

Response:

```json
{
  "action": "check",
  "known": true,
  "status": "ok",
  "tool_count": 2,
  "change_count": 0,
  "first_seen_at": "2026-08-20T09:43:52Z",
  "last_success_at": "2026-08-20T18:47:15Z",
  "limitation": "We observe DECLARATIONS, not behaviour."
}
```

## Links

- Homepage: https://drift.getvda.ai
- Agent Card (A2A): https://drift.getvda.ai/.well-known/agent.json
- Governance: https://drift.getvda.ai/governance.md
- Listed on Smithery: https://smithery.ai/servers/a2a/integration-agent
