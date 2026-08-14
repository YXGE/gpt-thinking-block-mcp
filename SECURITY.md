# Security

## Reporting a vulnerability

Please report vulnerabilities privately through GitHub's security advisory feature rather than opening a public issue.

## Deployment notes

- This repository is self-hosted software, not a hosted service. The maintainers do not provide a shared MCP endpoint.
- The included server has no authentication layer.
- Bind it behind an authenticated reverse proxy for persistent or shared deployments.
- Temporary tunnel URLs are public endpoints; anyone who knows the URL may call them.
- Thinking capture is disabled by default. If enabled, the JSONL log may contain sensitive conversation content and must be protected accordingly.
- Never commit tunnel credentials, access tokens, captured conversations, or private URLs.
