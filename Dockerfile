FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY server.py .

ENV PORT=3007
EXPOSE 3007

CMD ["python", "server.py"]
