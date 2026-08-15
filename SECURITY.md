# Security

This is self-hosted software under the MIT license, provided as-is. There is no hosted service and no shared endpoint.

## What the server provides

The bundled MCP server is a reference implementation for the thinking block renderer. It is intentionally minimal — dependency-free, single-file, easy to read and modify. It does not include authentication, rate limiting, tenancy, or access control.

By default, it binds to `127.0.0.1` and is only reachable from your own machine. The docker-compose file preserves this with a `127.0.0.1:` port-mapping prefix.

## What it does not provide

Anything beyond loopback access is a deployment decision, not a feature of this project. If you expose the server through a tunnel, reverse proxy, or non-loopback binding, you are responsible for the security of that deployment — including authentication, access control, and lifecycle management.

In particular: a `cloudflared` quick tunnel is a public endpoint. It is not authenticated, the URL is not secret, and it stays open for as long as the process runs. Stop it when you are done.

## Capture

Thinking capture is disabled by default. If enabled, the JSONL log contains conversation content in plain text. Keep it out of commits along with tokens, tunnel credentials, and private URLs.

## Reporting

Found something? Open a public issue — that is the right channel. There is no private reporting flow and no response time commitment. Pull requests are welcome.
