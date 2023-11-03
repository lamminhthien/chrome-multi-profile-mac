#!/bin/bash

# Set the path to the Chrome executable (change if needed)
brew install chrome-cli
# Set the maximum number of Chrome profiles
MAX_PROFILES=100

# Set the path to the Chrome executable (change if needed)
CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# Create Chrome profiles based on the MAX_PROFILES variable
for ((i = 1; i <= MAX_PROFILES; i++)); do
    profile_name="Profile$i"
    "$CHROME_PATH" --user-data-dir="/tmp/$profile_name" --no-first-run --no-default-browser-check &
    sleep 2  # Add a delay to avoid opening all profiles at once
done
