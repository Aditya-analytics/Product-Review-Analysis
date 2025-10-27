#!/bin/sh
set -e

# Use PORT environment variable or default to 8080
PORT=${PORT:-8080}

echo "Starting gunicorn on port $PORT"
exec gunicorn api:app --bind 0.0.0.0:$PORT --workers 2 --timeout 120
