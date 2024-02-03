Efficiently manage and analyze system logs, application logs, and security logs using a comprehensive set of commands. Enhance visibility into system activities with this powerful log management script.

# Secure Ops Logger

![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)

## Overview

Secure Ops Logger is a powerful Bash script designed to streamline the management of system logs, offering an efficient and organized way to monitor and analyze critical information. The script combines a set of commands to help you review system messages, kernel messages, application-specific logs, security logs, audit logs, system startup logs, last logins, SSH logs, and cron job logs.

## 🚀 Features

- **System Messages Log:** Display system messages log.
- **Kernel Messages:** View kernel messages.
- **Real-time Application Logs:** Tail application-specific logs (e.g., Apache Web Server logs).
- **Security Logs:** Check for authentication events.
- **Audit Logs:** Review detailed audit logs.
- **System Startup Logs:** Inspect logs related to system startup.
- **Last Logins:** Check the last 10 logins.
- **SSH Logs:** Search for 'sshd' entries in SSH logs.
- **Cron Job Logs:** Display logs related to cron jobs.

## 🛠️ Prerequisites

- Unix-like system (Linux, macOS, etc.)
- Bash shell
- Sufficient permissions to access and read log files (may require sudo)

## 📖 Usage

1. **Clone the repository to your local machine:**

    ```bash
    git clone https://github.com/Raja-Ramees/secure_ops_logger.git
    cd secure_ops_logger
    ```

2. **Execute the script:**

    ```bash
    ./secure_ops_logger.sh
    ```

3. **Follow the prompts and press Enter to navigate through different log sections.**

## 🛠️ Customization

The script can be easily customized by modifying log file paths or adjusting the number of lines displayed within the script itself.

## 🔍 Example

```bash
# Display system messages log
./secure_ops_logger.sh


