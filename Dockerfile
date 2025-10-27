FROM python:3.11-slim

WORKDIR /app

# Copy Python requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY api.py .
COPY senti_lr.pkl .
COPY frontend/dist ./frontend/dist

# Expose port
EXPOSE 8080

# Start with gunicorn - Railway sets PORT env var
CMD gunicorn --bind 0.0.0.0:${PORT:-8080} --workers 2 --timeout 120 --access-logfile - --error-logfile - api:app
