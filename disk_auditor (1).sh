#!/bin/bash
# Script 3: disk_auditor.sh (Full Marks Version)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "       Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Size (ignore permission errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR => Directory does not exist"
    fi
done

echo "======================================"

# Optional: Check Python config directory (since your project is on Python)
PY_DIR="/usr/lib/python3"

if [ -d "$PY_DIR" ]; then
    echo "Python Directory Found:"
    ls -ld "$PY_DIR"
else
    echo "Python directory not found on this system"
fi