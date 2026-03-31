#!/bin/bash
# Script 1: System Identity Report
# Author: Prageya Dubey
# Course: Open Source Software [cite: 104]
# Target Software: Linux Kernel

# --- Variables & Command Substitution ---
STUDENT_NAME="Prageya Dubey"
SOFTWARE_CHOICE="Linux Kernel"

# Gathering system information using command substitution $() 
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%A, %B %d, %Y at %T")

# Extracting the distribution name from /etc/os-release
# grep finds the line starting with PRETTY_NAME, and cut extracts the value
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)

# --- Display Section ---
# Using basic output formatting with echo 
echo "=================================================="
echo "          THE OPEN SOURCE AUDIT                   "
echo "=================================================="
echo "Auditor Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "--------------------------------------------------"
echo "System Date/Time: $CURRENT_DATE"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "--------------------------------------------------"
# Displaying the required open-source license message [cite: 98]
echo "License Info    : The OS is powered by the Linux Kernel,"
echo "                  which is protected and distributed under"
echo "                  the GNU General Public License v2 (GPL v2)."
echo "=================================================="
