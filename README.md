# The Open Source Audit: Shell Scripts

**Student Name:** Prageya Dubey  
**Roll Number:** 24BCE11148  
**Course:** Open Source Software (OSS NGMC)  
**Chosen Software:** The Linux Kernel  

## Project Overview
This repository contains five shell scripts developed as part of the Open Source Audit Capstone Project. The scripts demonstrate practical Linux system administration, file system auditing, and log analysis, all contextualized around the Linux Kernel. A `master_audit.sh` script is also included to run the entire suite sequentially.

---

## Script Descriptions & Sample Outputs

### Script 1: System Identity Report (`script1.sh`)
Displays core system identity metrics including the distribution name, kernel version, logged-in user, uptime, and the GPL v2 open-source license protecting the OS.
```text
==================================================
          THE OPEN SOURCE AUDIT
==================================================
Auditor Name    : Prageya Dubey
Chosen Software : Linux Kernel
--------------------------------------------------
System Date/Time: Tuesday, March 31, 2026 at 18:47:30
Linux Distro    : Ubuntu 24.04.4 LTS
Kernel Version  : 6.6.87.2-microsoft-standard-WSL2
Current User    : dd
Home Directory  : /home/dd
System Uptime   : up 0 minutes
--------------------------------------------------
License Info    : The OS is powered by the Linux Kernel,
                  which is protected and distributed under
                  the GNU General Public License v2 (GPL v2).
==================================================
```
Script 2: FOSS Package Inspector (script2.sh)
Verifies the installation of the util-linux package (essential kernel utilities), extracts its version data using dpkg, and outputs a philosophical statement about its role in the ecosystem using a case statement.

```txt
==================================================
          FOSS PACKAGE INSPECTOR
==================================================
[SUCCESS] 'util-linux' is installed on this system.
--------------------------------------------------
Package Details:
Section: utils
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Version: 2.39.3-9ubuntu6.4
--------------------------------------------------
Philosophy Note:
Linux Kernel Utilities: The foundation everything else runs on.
==================================================
Script 3: Disk and Permission Auditor (script3.sh)
Iterates through standard Linux directories to report ownership, permissions, and disk usage. It includes a targeted audit of the /boot directory where kernel images and configurations reside.
```
```txt
==================================================
          DISK AND PERMISSION AUDITOR
==================================================
Directory  : /etc
Permissions: drwxr-xr-x User:root Group:root
Size       : 4.3M
--------------------------------------------------
Directory  : /var/log
Permissions: drwxrwxr-x User:root Group:syslog
Size       : 59M
--------------------------------------------------
Directory  : /home
Permissions: drwxr-xr-x User:root Group:root
Size       : 284K
--------------------------------------------------
Directory  : /usr/bin
Permissions: drwxr-xr-x User:root Group:root
Size       : 95M
--------------------------------------------------
Directory  : /tmp
Permissions: drwxrwxrwt User:root Group:root
Size       : 24K
--------------------------------------------------
>>> TARGET SOFTWARE AUDIT: LINUX KERNEL <<<
Directory  : /boot (Kernel Images & Configs)
Permissions: drwxr-xr-x User:root Group:root
Size       : 4.0K
==================================================
```
Script 4: Log File Analyzer (script4.sh)
Scans a provided kernel log file line-by-line to count occurrences of a specific keyword and prints the last 5 matching events. Includes interactive retry logic for empty files.

```txt
==================================================
              LOG FILE ANALYZER
==================================================
Analyzing '/var/log/syslog' for keyword: 'error'...
--------------------------------------------------
Summary: Keyword 'error' found 14 times.
--------------------------------------------------
Last 5 occurrences found in the log:
2026-03-31T17:53:03.036097+00:00 LAPTOP-UIDBKO07 kernel: WSL (238) ERROR: CheckConnection: getaddrinfo() failed: -5
2026-03-31T18:39:58.505904+00:00 LAPTOP-UIDBKO07 systemd[1]: apport-autoreport.path - Process error reports when automatic reporting is enabled (file watch) was skipped because of an unmet condition check (ConditionPathExists=/var/lib/apport/autoreport).
2026-03-31T18:39:58.505906+00:00 LAPTOP-UIDBKO07 systemd[1]: apport-autoreport.timer - Process error reports when automatic reporting is enabled (timer based) was skipped because of an unmet condition check (ConditionPathExists=/var/lib/apport/autoreport).
2026-03-31T18:39:58.506663+00:00 LAPTOP-UIDBKO07 kernel: RAS: Correctable Errors collector initialized.
2026-03-31T13:17:47.671348+00:00 LAPTOP-UIDBKO07 kernel: WSL (235) ERROR: CheckConnection: getaddrinfo() failed: -5
==================================================
```
Script 5: Open Source Manifesto Generator (script5.sh)
An interactive script that prompts the user for their views on open-source software and freedom, concatenates the input into a personalized text file, and displays the final manifesto.

```txt
==================================================
       OPEN SOURCE MANIFESTO GENERATOR
==================================================
Answer three questions to generate your manifesto.
--------------------------------------------------
1. Name one open-source tool you use every day: vlc Player
2. In one word, what does 'freedom' mean to you? athority
3. Name one thing you would build and share freely: Custom Linux Distro
--------------------------------------------------
Generating your personalized manifesto...
[SUCCESS] Manifesto successfully saved to manifesto_dd.txt
==================================================
Here is your generated text:
--------------------------------------------------
The Open Source Manifesto of dd
Date: 31 March 2026
Target Ecosystem: The Linux Kernel
--------------------------------------------------
I believe that software should serve the user, not control them. Every day, I rely on tools like vlc Player to learn and create without artificial boundaries. To me, open source is fundamentally about athority. It is the guarantee that I can inspect the tools I use, understand how they work, and adapt them to my own needs. In the spirit of the free software movement, I pledge to contribute back to the community. If given the resources, I would build a Custom Linux Distro and release it under a GPL license so that others might learn from it, improve it, and stand on my shoulders just as I have stood on the shoulders of giants.
==================================================
```
Dependencies
These scripts are designed to run on a Debian/Ubuntu-based Linux system (including WSL). Standard GNU coreutils are required.

dpkg (For Script 2)

awk, grep, du, ls (Standard utilities)

Step-by-Step Instructions to Run the Scripts
Open a Linux terminal and clone this repository:
git clone <your-repository-url>

Navigate into the directory:
cd oss-audit-24BCE11148

Ensure all scripts have execution permissions:
chmod +x *.sh

Recommended: Run the master execution script to view all audits sequentially:
./master_audit.sh

Alternatively, execute the scripts one by one:

./script1.sh

./script2.sh

./script3.sh

./script4.sh <path_to_log_file> [keyword]

./script5.sh


### Step 3: Save and Push to GitHub!
Save the file in `nano` (`Ctrl + O`, `Enter`, `Ctrl + X`). 

Now, just run these three commands to update your repository on GitHub with this beautiful new README:
```bash
git add README.md
git commit -m "Updated README with sample execution outputs"
git push
```

