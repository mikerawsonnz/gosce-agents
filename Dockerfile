# GOSCE Portfolio — MCP stdio gateway for Glama's automated build/verify.
# Glama builds this image, runs it, and speaks MCP over stdio to enumerate tools.
# The server exposes the GOSCE agents as tools and proxies calls to their live
# getvda.ai endpoints. Tool discovery (initialize / tools/list) is fully static,
# so it works in Glama's network-restricted scan sandbox.
FROM python:3.12-slim

WORKDIR /app

# Install pinned, minimal deps first (better layer caching).
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY glama_server.py ./

# Run as an unprivileged user (safety check).
RUN useradd --create-home --uid 10001 mcp && chown -R mcp /app
USER mcp

# stdio transport — no port is exposed; Glama communicates over stdin/stdout.
ENTRYPOINT ["python", "glama_server.py"]
