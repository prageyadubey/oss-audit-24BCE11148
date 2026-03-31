#!/bin/bash
# Script 4: Log File Analyzer
# Author: Prageya Dubey
# Course: Open Source Software
# Target Software: Linux Kernel

# Assign command-line arguments to variables
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if none is provided
COUNT=0

echo "=================================================="
echo "              LOG FILE ANALYZER                   "
echo "=================================================="

# Check if the user provided a file argument at all
if [ -z "$LOGFILE" ]; then
    echo "[ERROR] No file specified."
    echo "Usage: ./script4.sh <path_to_logfile> [keyword]"
    exit 1
fi

# Check if the initial file exists
if [ ! -f "$LOGFILE" ]; then
    echo "[ERROR] File '$LOGFILE' not found."
    exit 1
fi

# --- DO-WHILE STYLE RETRY LOGIC ---
# In bash, we simulate a do-while loop using an infinite loop with a break condition
while true; do
    # The -s flag checks if the file size is greater than zero
    if [ ! -s "$LOGFILE" ]; then
        echo "[WARNING] The file '$LOGFILE' is completely empty."
        # Interactively ask the user for a new file
        read -p "Please enter the path to a non-empty log file: " LOGFILE
        
        # Verify the newly provided file exists before looping again
        if [ ! -f "$LOGFILE" ]; then
             echo "[ERROR] That file does not exist either. Exiting."
             exit 1
        fi
    else
        # File has contents, break out of the retry loop
        break
    fi
done

echo "Analyzing '$LOGFILE' for keyword: '$KEYWORD'..."
echo "--------------------------------------------------"

# --- WHILE-READ LOOP ---
# Read the file line by line
while IFS= read -r LINE; do
    # Use grep -iq to silently check for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter if a match is found
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print the final summary
echo "Summary: Keyword '$KEYWORD' found $COUNT times."

# --- PRINT LAST 5 MATCHES ---
if [ $COUNT -gt 0 ]; then
    echo "--------------------------------------------------"
    echo "Last 5 occurrences found in the log:"
    # Use grep to find all matches, then pipe to tail to get the last 5
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
echo "=================================================="
