#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Prageya Dubey
# Course: Open Source Software
# Target Software: Linux Kernel

# Array of standard system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================================="
echo "          DISK AND PERMISSION AUDITOR             "
echo "=================================================="

# Loop through the list of standard directories
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists
    if [ -d "$DIR" ]; then
        # Use ls -ld to get directory details, then awk to extract:
        # $1 (permissions), $3 (owner), $4 (group)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, "User:"$3, "Group:"$4}')
        
        # Use du -sh to get human-readable summary size, suppressing error messages
        # awk extracts just the size value (first column)
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        echo "Directory  : $DIR"
        echo "Permissions: $PERMS"
        echo "Size       : ${SIZE:-Unknown}"
        echo "--------------------------------------------------"
    else
        echo "[WARNING] $DIR does not exist on this system."
        echo "--------------------------------------------------"
    fi
done

# --- Custom Software Audit Section ---
# Checking the Linux Kernel specific directory
KERNEL_DIR="/boot"

echo ">>> TARGET SOFTWARE AUDIT: LINUX KERNEL <<<"
if [ -d "$KERNEL_DIR" ]; then
    K_PERMS=$(ls -ld "$KERNEL_DIR" | awk '{print $1, "User:"$3, "Group:"$4}')
    K_SIZE=$(du -sh "$KERNEL_DIR" 2>/dev/null | awk '{print $1}')
    
    echo "Directory  : $KERNEL_DIR (Kernel Images & Configs)"
    echo "Permissions: $K_PERMS"
    echo "Size       : ${K_SIZE:-Unknown}"
else
    echo "[WARNING] Kernel directory $KERNEL_DIR not found."
fi
echo "=================================================="
