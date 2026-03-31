#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if command -v $PACKAGE >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    echo "Version: $($PACKAGE --version)"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement (IMPORTANT for marks)
case $PACKAGE in
    git) echo "Git: version control system that powers modern development" ;;
    python3) echo "Python: versatile language for automation and AI" ;;
    vlc) echo "VLC: open-source media player that plays anything" ;;
    apache2) echo "Apache: web server that built the internet" ;;
    *) echo "Unknown package" ;;
esac