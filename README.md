# Purpose

This Bash script reports if there are more CPU-bound processes running than the number of CPU cores available. This may indicate an inefficient use of system resources and could result in performance issues.

# Demo
![](https://github.com/lrvl/detect_cpupressure/blob/main/screenrecording.gif)

# Requirements

The script requires a Linux kernel with vmlinuz-$MAJOR psi=1 in /proc/cmdline. This means that the kernel must have the PSI (Pressure Stall Information) feature enabled.

# Usage

To use the script, simply run it as a Bash command. The script will check if there are any CPU-bound processes running more than the number of CPU cores available, and will print a message to the console if any inefficiency is detected.

# Script Details

Read the pattern "avg10=[1-9]{1,}\d" in the /proc/pressure/cpu file. This file provides pressure metrics on CPU usage.
If the script detects any CPU inefficiency, it will print a message to the console with the current date and time and the number of CPU cores available. The message will indicate that inefficiency has been detected. Then use the ps command to display a list of running processes sorted by the percentage of CPU usage. It excludes any processes with CPU usage less than 0.1% to filter out any idle or low priority processes.
