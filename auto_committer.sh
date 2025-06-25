#!/bin/bash

# Navigate to repo directory
cd "$(dirname "$0")"

# Create or update the commit log
echo "Activity at $(date)" >> commits.txt

# Git commands
git add commits.txt
git commit -m "Daily auto-commit at $(date)"
git push origin master
