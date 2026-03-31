# Open Source Audit Capstone Project: Python

*Student Name:* Varuni Sood 
*Registration Number:* 24BCY10390 
*Chosen Software:* Python  

## Project Overview
This repository contains the practical shell scripting component of the Open Source Audit capstone project [3]. It accompanies a detailed report auditing the Python programming language, including its origin story, an analysis of the Python Software Foundation (PSF) License, its footprint on a Linux filesystem, its broader FOSS ecosystem, and a comparison against proprietary alternatives like MATLAB [2, 4-6].

## Included Shell Scripts
This repository includes five Bash scripts designed to demonstrate practical Linux administration and open-source principles [7, 8].

*1. System Identity Report (system_identity.sh)*  
This script introduces the Linux system by displaying the OS name, kernel version, current logged-in user, and system uptime [7, 9, 10].  

*2. FOSS Package Inspector (package_inspector.sh)*  
This script checks whether a specified open-source tool (like Git or Python) is installed on the system, fetches its version, and prints a philosophical note about its role in the FOSS ecosystem [11, 12]. 

*3. Disk and Permission Auditor (disk_auditor.sh)*  
This script loops through important system directories (e.g., /etc, /var/log, /home) and reports how much disk space each uses along with their permission settings and owner [13, 14]. 

*4. Log File Analyzer (log_analyzer.sh)*  
This script reads a system log file line by line, counts the occurrences of a specific keyword (defaulting to 'error'), and prints the most recent matching lines to help system administrators identify critical events [15, 16]. 

*5. Open Source Manifesto Generator (manifesto_generator.sh)*  
This interactive script asks the user questions about their open-source values and the "giants" whose shoulders they stand on, generates a personalized philosophy statement, and saves it to a .txt file [17, 18]. 

## Dependencies Required
To run these scripts, you will need:
* A Linux-based operating system (or a VM/WSL) [19].
* The bash shell [9].
* Standard Linux text processing and system utilities: grep, awk, cut, du, ls, and uptime [9, 12, 13, 16].
* A package manager query tool (dpkg or rpm) depending on your Linux distribution [11, 12].

## Step-by-Step Instructions to Run the Scripts
Open your Linux terminal, clone this repository, navigate into the folder, and run the following commands [1]:

*Step 1: Make the scripts executable*
Run the following command to grant execution permissions to all script files:
chmod +x *.sh

*Step 2: Run Script 1*
./system_identity.sh

*Step 3: Run Script 2*
./package_inspector.sh

*Step 4: Run Script 3*
./disk_auditor.sh

*Step 5: Run Script 4*
This script requires you to pass the path to a log file as an argument. You can also optionally pass a keyword to search for:
./log_analyzer.sh /var/log/syslog  
(Note: Use /var/log/messages if on a RHEL/CentOS system, or any accessible text log file).

*Step 6: Run Script 5*
./manifesto_generator.sh
Follow the on-screen prompts. Once finished, view your generated manifesto by typing cat manifesto.txt
