#!/bin/bash

# CPS 310 ICA08 - Release Verification Script

# Run the full pytest suite
echo "Running automated tests..."
python3 -m pytest -v

# Check for requirements.txt
if [ -f "requirements.txt" ]; then
    echo "requirements.txt found."
else
    echo "requirements.txt is missing."
fi

# Check for config.json
if [ -f "config.json" ]; then
    echo "config.json found."
else
    echo "config.json is missing."
fi

# Display Git status
echo "Git status:"
git status --short