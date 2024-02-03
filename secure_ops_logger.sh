#!/bin/bash
# Author: RAJA RAMEES
# DATE: 03/02/2024
# Manage System Logs, Application Logs, And Security Logs Effectively By Using Combination Of Commands

# Function to display section headers
print_section_header() {
    echo "####################################################"
    echo
}

# Function to pause and display a message
pause() {
    echo
    echo "Press Enter to continue..."
    read -r
}

# Function to display log files with enhanced formatting
display_logs() {
    local log_file=$1
    echo "Displaying $log_file:"
    sudo tail -n 20 "$log_file"
    echo "####################################################"
}

# Function to display log files with a specific keyword
grep_logs() {
    local log_file=$1
    local keyword=$2
    echo "Checking $log_file for $keyword:"
    sudo grep "$keyword" "$log_file"
    echo "####################################################"
}

# Viewing System Logs
print_section_header
echo "Displaying System Messages Log:"
sudo tail -n 20 /var/log/messages
pause

# View Kernel Messages
print_section_header
echo "Kernel Messages:"
dmesg | tail
pause

# View Application-Specific Logs
print_section_header
echo "Tail The Application Logs Real Time:"
echo "Apache Web Server Logs:"
sudo tail -n 20 /var/log/httpd/error_log
pause

# Security Logs
print_section_header
grep_logs "/var/log/secure" 'authentication'
pause

# Checking Audit Logs
print_section_header
display_logs "/var/log/audit/audit.log"
pause

# System Startup Logs
print_section_header
display_logs "/var/log/boot.log"
pause

# Last Logins
print_section_header
echo "Checking Last 10 Logins:"
last -10
pause

# SSH Logs
print_section_header
grep_logs "/var/log/secure" 'sshd'
pause

# Cron Job Logs
print_section_header
display_logs "/var/log/cron"
pause
~                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
~                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
~                                                         
