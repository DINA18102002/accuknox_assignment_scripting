# AccuKnox Scripting Assignment

This repository contains solutions for the **AccuKnox scripting assignment**.
Two objectives were implemented using **Bash and Python** to automate common system monitoring tasks.

---

# Objectives Implemented

1. **System Health Monitoring Script**
2. **Application Health Checker**

These scripts help monitor system resources and application availability, which are essential tasks in **DevOps and system administration**.

---

# Project Structure

```
accuknox_assignment_scripting
│
├── system_health_monitoring
│   └── health_monitor.sh
│
├── application_health_checker
│   └── health_check.py
│
├── README.md
```

---

# 1. System Health Monitoring Script

### Description

This Bash script monitors the health of a Linux system by checking:

* CPU usage
* Memory usage
* Disk usage
* Running processes

If any resource exceeds a predefined threshold (80%), the script generates an **alert message**.

### Features

* Checks CPU utilization
* Monitors memory usage
* Tracks disk space
* Displays top running processes
* Logs alerts to the console or log file

### Run the Script

```
chmod +x health_monitor.sh
./health_monitor.sh
```

### Example Output

```
===== System Health Check =====
ALERT: CPU usage is high: 85%
ALERT: Memory usage is high: 82%
ALERT: Disk usage is high: 90%
```

---

# 2. Application Health Checker

### Description

This Python script checks whether a web application is **UP or DOWN** by sending an HTTP request and evaluating the **HTTP status code**.

If the server responds with status code **200**, the application is considered **UP**.

If the application does not respond or returns another status code, it is considered **DOWN**.

### Requirements

Python 3
requests library

### Install Dependency

```
pip install requests
```

### Run the Script

```
python health_check.py
```

### Example Output

```
[2026-03-13 14:20:01] Application is UP
```

or

```
[2026-03-13 14:20:01] Application is DOWN
```

---

# Automation (Optional)

These scripts can be scheduled using **cron jobs** for continuous monitoring.

Example:

```
crontab -e
```

Run every 5 minutes:

```
*/5 * * * * /path/to/health_monitor.sh
```

---

# Tools Used

* Linux
* Bash
* Python
* Requests Library
* Git & GitHub

---

# Conclusion

This project demonstrates how scripting can automate system monitoring and application availability checks.
Such automation improves reliability and helps quickly detect system issues in production environments.

---

# Author

**Theena**
DevOps Enthusiast
