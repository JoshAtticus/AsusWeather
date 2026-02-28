FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY server.py .

ENV PORT=3007
# Force python to not buffer output so logs show up immediately
ENV PYTHONUNBUFFERED=1
EXPOSE 3007

CMD ["python", "server.py"]
