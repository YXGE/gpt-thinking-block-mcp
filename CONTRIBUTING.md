# Contributing

Small, reviewable pull requests are welcome.

1. Keep the server usable with the Python standard library only.
2. Preserve the privacy-safe default: capture must remain opt-in.
3. If the widget changes materially, bump `WIDGET_URI` to avoid stale host caches.
4. Keep style behavior in the tool schema rather than hard-coding prose in the server response.
5. Run `python3 -m unittest discover -v` before opening a pull request.

Please do not include captured conversations, credentials, tunnel tokens, or private endpoint URLs in issues or pull requests.
