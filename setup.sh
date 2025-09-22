#!/bin/bash
# setup.sh - one-time or repeatable setup for ski-line-rec

# Stop on first error
set -e

# 1. Create venv if it doesn’t exist
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi

# 2. Activate venv
echo "Activating virtual environment..."
source .venv/bin/activate

# 3. Upgrade pip
pip install --upgrade pip

# 4. Install dependencies
if [ -f requirements.txt ]; then
    echo "Installing dependencies..."
    pip install -r requirements.txt
fi

# 5. Run initial migrations (safe even if none exist)
python manage.py migrate || true

# 6. Start dev server
echo "Starting Django dev server at http://127.0.0.1:8000 ..."
python manage.py runserver
