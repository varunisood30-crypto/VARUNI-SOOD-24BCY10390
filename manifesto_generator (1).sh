#!/bin/bash
# Script 5: manifesto_generator.sh (Full Marks Version)

echo "Welcome to the Open Source Manifesto Generator!"
echo ""

# Take user input (3 questions as required)
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file (dynamic username)
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto paragraph
MANIFESTO="On $DATE, I affirm that $TOOL represents the spirit of open source. To me, freedom means $FREEDOM. I believe in building $BUILD and sharing it openly with the world."

# Save to file
echo "$MANIFESTO" > "$OUTPUT"

# Show confirmation
echo ""
echo "Manifesto generated successfully in $OUTPUT"
echo "-----------------------------------------"

# Display content (important for output proof)
cat "$OUTPUT"