FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY api.py .
COPY senti_lr.pkl .
COPY frontend/dist ./frontend/dist

# Set environment
ENV PYTHONUNBUFFERED=1

# Run with gunicorn
CMD gunicorn --bind 0.0.0.0:$PORT --workers 2 --timeout 120 api:app
