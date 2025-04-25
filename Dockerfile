FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY relay.py .

ENV PORT=8080
ENV SERVICE_NAME=context7-relay

CMD ["uvicorn", "relay:app", "--host", "0.0.0.0", "--port", "8080"]
