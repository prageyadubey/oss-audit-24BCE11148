#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Prageya Dubey
# Course: Open Source Software
# Target Software: Linux Kernel

# The package we want to inspect. 
# We use 'util-linux' as it contains essential utilities that interact directly with the Linux kernel.
PACKAGE="util-linux"

echo "=================================================="
echo "          FOSS PACKAGE INSPECTOR                  "
echo "=================================================="

# Check if the package is installed using dpkg (Ubuntu/Debian package manager)
# We redirect standard output and errors to /dev/null to keep the terminal clean
if dpkg -l "$PACKAGE" &> /dev/null; then
    echo "[SUCCESS] '$PACKAGE' is installed on this system."
    echo "--------------------------------------------------"
    echo "Package Details:"
    # Use dpkg -s to get info, then pipe to grep to extract specific lines (Version, Maintainer, etc.)
    dpkg -s "$PACKAGE" | grep -E '^(Version|Maintainer|Section)'
else
    echo "[WARNING] '$PACKAGE' is NOT installed on this system."
fi

echo "--------------------------------------------------"
echo "Philosophy Note:"

# A case statement to print a philosophical note based on the package name
# Includes the mandatory examples plus the Linux Kernel and 3 others
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql|mysql-server) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    util-linux|linux-headers-*) 
        echo "Linux Kernel Utilities: The foundation everything else runs on." 
        ;;
    firefox)
        echo "Firefox: A nonprofit browser fighting for an open web."
        ;;
    vlc)
        echo "VLC: Plays anything - built by students in Paris, shared globally."
        ;;
    git)
        echo "Git: The tool Linus built when proprietary software failed him."
        ;;
    *) 
        echo "$PACKAGE: A valuable part of the broader FOSS ecosystem." 
        ;;
esac
echo "=================================================="
