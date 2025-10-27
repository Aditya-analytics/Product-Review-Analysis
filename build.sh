#!/bin/bash
set -e  # Exit on error

echo "Checking for pre-built frontend..."
if [ -d "frontend/dist" ]; then
  echo "✓ Frontend already built (using pre-built dist)"
else
  echo "Building React frontend..."
  cd frontend || exit 1
  NODE_ENV=production NODE_OPTIONS="--max-old-space-size=4096" npm run build
  cd ..
fi

echo "Build complete!"
