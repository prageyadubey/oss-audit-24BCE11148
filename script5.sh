#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Prageya Dubey
# Course: Open Source Software
# Target Software: Linux Kernel

# --- Alias Concept Demonstration ---
# In Linux, an alias is a shortcut for a longer command.
# For example, to run this script easily from anywhere, you could add:
# alias manifesto='~/script5.sh' 
# to your ~/.bashrc file.

echo "=================================================="
echo "       OPEN SOURCE MANIFESTO GENERATOR            "
echo "=================================================="
echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

# Interactively gather user input using read -p
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Fetch the current date formatted as Day Month Year
DATE=$(date +'%d %B %Y')

# Define the output file dynamically using command substitution
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------------------------"
echo "Generating your personalized manifesto..."

# --- String Concatenation & File Redirection ---
# The single > creates or overwrites the file
echo "The Open Source Manifesto of $(whoami)" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Target Ecosystem: The Linux Kernel" >> "$OUTPUT"
echo "--------------------------------------------------" >> "$OUTPUT"

# The double >> appends the concatenated string to the end of the file
echo "I believe that software should serve the user, not control them. Every day, I rely on tools like $TOOL to learn and create without artificial boundaries. To me, open source is fundamentally about $FREEDOM. It is the guarantee that I can inspect the tools I use, understand how they work, and adapt them to my own needs. In the spirit of the free software movement, I pledge to contribute back to the community. If given the resources, I would build a $BUILD and release it under a GPL license so that others might learn from it, improve it, and stand on my shoulders just as I have stood on the shoulders of giants." >> "$OUTPUT"

echo "[SUCCESS] Manifesto successfully saved to $OUTPUT"
echo "=================================================="
echo "Here is your generated text:"
echo "--------------------------------------------------"

# Display the final generated text file to the screen
cat "$OUTPUT"
echo "=================================================="
