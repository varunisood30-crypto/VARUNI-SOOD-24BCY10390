#!/bin/bash
# Script 4: log_analyzer.sh (Full Marks Version)

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    echo "Usage: ./log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Output result
echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------"

# Show last 5 matching lines
echo "Recent matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5