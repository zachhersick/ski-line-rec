#!/bin/bash
# dev.sh - quick start script for ski-line-rec

# Stop on first error
set -e

# 1. Activate venv (must already exist)
if [ ! -d ".venv" ]; then
    echo "Error: .venv not found. Run ./setup.sh first to create it."
    exit 1
fi

source .venv/bin/activate

# 2. Start Django dev server
echo "Starting Django dev server at http://127.0.0.1:8000 ..."
python manage.py runserver
