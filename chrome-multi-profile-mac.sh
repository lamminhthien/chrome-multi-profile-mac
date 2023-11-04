#!/bin/bash
# For macos
# Install chrome-cli
brew install chrome-cli
# Set the maximum number of Chrome profiles
FROM_PROFILES=1
TO_PROFILES=9

# Set the path to the Chrome executable (change if needed)
CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# Set the initial URL for the profiles
INITIAL_URL="https://www.quizne.com/room/h1ebn/multiple-play"

# Create Chrome profiles based on the MAX_PROFILES variable
for ((i = FROM_PROFILES; i <= TO_PROFILES; i++)); do
    profile_name="Profile$i"
    "$CHROME_PATH" --user-data-dir="/tmp/$profile_name" --no-first-run --no-default-browser-check "$INITIAL_URL" &
    sleep 2  # Add a delay to avoid opening all profiles at once
done

