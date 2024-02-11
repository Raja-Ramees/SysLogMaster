#!/bin/bash
# Author: RAJA RAMEES
# DATE: 03/02/2024
# Manage System Logs, Application Logs, And Security Logs Effectively By Using A Combination Of Commands

# Function to display section headers
print_section_header() {
    echo "####################################################"
    echo
}

# Function to pause and display a message
pause() {
    read -p "Press Enter to continue..."
    echo
}

# Function to display log files with enhanced formatting
display_logs() {
    local log_file=$1
    echo "Displaying $log_file:"
    sudo tail -n 20 "$log_file"
    print_section_header
}

# Function to display log files with a specific keyword
grep_logs() {
    local log_file=$1
    local keyword=$2
    echo "Checking $log_file for '$keyword':"
    sudo grep "$keyword" "$log_file"
    print_section_header
}

# Function to show system messages log
show_system_messages() {
    print_section_header
    echo "Displaying System Messages Log:"
    sudo tail -n 20 /var/log/messages
    pause
}

# Function to show kernel messages
show_kernel_messages() {
    print_section_header
    echo "Kernel Messages:"
    dmesg | tail
    pause
}

# Function to show application-specific logs
show_application_logs() {
    print_section_header
    echo "Tail The Application Logs Real Time:"
    echo "Apache Web Server Logs:"
    sudo tail -n 20 /var/log/httpd/error_log
    pause
}

# Function to show security logs with a specific keyword
show_security_logs() {
    print_section_header
    grep_logs "/var/log/secure" 'authentication'
    pause
}

# Function to check audit logs
check_audit_logs() {
    print_section_header
    display_logs "/var/log/audit/audit.log"
    pause
}

# Function to check system startup logs
check_startup_logs() {
    print_section_header
    display_logs "/var/log/boot.log"
    pause
}

# Function to check last logins
check_last_logins() {
    print_section_header
    echo "Checking Last 10 Logins:"
    last -10
    pause
}

# Function to show SSH logs with a specific keyword
show_ssh_logs() {
    print_section_header
    grep_logs "/var/log/secure" 'sshd'
    pause
}

# Function to show cron job logs
show_cron_logs() {
    print_section_header
    display_logs "/var/log/cron"
    pause
}

# Main script

# Display a welcome message
echo "Welcome to the Log Management Script!"
echo

# Variable to control the loop
user_choice=""

# Main loop
while [ "$user_choice" != "q" ]; do
    # Display menu
    echo "Menu:"
    echo "1. Show System Messages Log"
    echo "2. Show Kernel Messages"
    echo "3. Show Application Logs"
    echo "4. Show Security Logs"
    echo "5. Check Audit Logs"
    echo "6. Check System Startup Logs"
    echo "7. Check Last Logins"
    echo "8. Show SSH Logs"
    echo "9. Show Cron Job Logs"
    echo "q. Quit"

    read -p "Enter your choice: " user_choice

    # Execute corresponding function based on user choice
    if [ "$user_choice" == "1" ]; then
        show_system_messages
    elif [ "$user_choice" == "2" ]; then
        show_kernel_messages
    elif [ "$user_choice" == "3" ]; then
        show_application_logs
    elif [ "$user_choice" == "4" ]; then
        show_security_logs
    elif [ "$user_choice" == "5" ]; then
        check_audit_logs
    elif [ "$user_choice" == "6" ]; then
        check_startup_logs
    elif [ "$user_choice" == "7" ]; then
        check_last_logins
    elif [ "$user_choice" == "8" ]; then
        show_ssh_logs
    elif [ "$user_choice" == "9" ]; then
        show_cron_logs
    elif [ "$user_choice" == "q" ]; then
        echo "Exiting the Log Management Script. Goodbye!"
    else
        echo "Invalid choice. Please try again."
    fi
done


