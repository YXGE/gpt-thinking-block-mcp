FROM python:3.12-slim

WORKDIR /app
COPY server.py .

ENV PYTHONUNBUFFERED=1
ENV PORT=8080
EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=3s --retries=3 \
  CMD ["python3", "-c", "import os, urllib.request; urllib.request.urlopen('http://127.0.0.1:' + os.environ.get('PORT', '8080') + '/health', timeout=2)"]

CMD ["python3", "server.py"]
