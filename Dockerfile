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
EXPOSE 5000

# Start with gunicorn
CMD gunicorn --bind 0.0.0.0:$PORT --workers 2 --timeout 120 api:app
