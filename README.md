# The Open Source Audit: Shell Scripts

**Student Name:** Prageya Dubey  
**Roll Number:** 24BCE11148  
**Course:** Open Source Software (OSS NGMC)  
**Chosen Software:** The Linux Kernel  

## Project Overview
This repository contains five shell scripts developed as part of the Open Source Audit Capstone Project. The scripts demonstrate practical Linux system administration, file system auditing, and log analysis, all contextualized around the Linux Kernel.

## Script Descriptions
* **Script 1: System Identity Report (`script1.sh`)** Displays core system identity metrics including the distribution name, kernel version, logged-in user, uptime, and the GPL v2 open-source license protecting the OS.
* **Script 2: FOSS Package Inspector (`script2.sh`)** Verifies the installation of the `util-linux` package (essential kernel utilities), extracts its version data using `dpkg`, and outputs a philosophical statement about its role in the ecosystem using a case statement.
* **Script 3: Disk and Permission Auditor (`script3.sh`)** Iterates through standard Linux directories to report ownership, permissions, and disk usage. It includes a targeted audit of the `/boot` directory where kernel images and configurations reside.
* **Script 4: Log File Analyzer (`script4.sh`)** Scans a provided kernel log file line-by-line to count occurrences of a specific keyword (defaulting to "error") and prints the last 5 matching events. Includes interactive retry logic for empty files.
* **Script 5: Open Source Manifesto Generator (`script5.sh`)** An interactive script that prompts the user for their views on open-source software and freedom, concatenates the input into a personalized text file, and displays the final manifesto.

## Dependencies
These scripts are designed to run on a Debian/Ubuntu-based Linux system (including WSL). Standard GNU coreutils are required.
* `dpkg` (For Script 2)
* `awk`, `grep`, `du`, `ls` (Standard utilities)

## Step-by-Step Instructions to Run the Scripts
1. Open a Linux terminal and clone this repository:
   `git clone <your-repository-url>`
2. Navigate into the directory:
   `cd oss-audit-[your-roll-number]`
3. Ensure all scripts have execution permissions:
   `chmod +x *.sh`
4. Execute the scripts one by one:
   * `./script1.sh`
   * `./script2.sh`
   * `./script3.sh`
   * `./script4.sh <path_to_log_file> [keyword]` *(e.g., `./script4.sh /var/log/syslog error` or create a dummy log file to test)*
   * `./script5.sh`

