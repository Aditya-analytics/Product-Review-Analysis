#!/bin/bash
set -e  # Exit on error

echo "Building React frontend..."
cd frontend || exit 1

# Use production build with memory optimization
NODE_ENV=production NODE_OPTIONS="--max-old-space-size=4096" npm run build

echo "Build complete!"
