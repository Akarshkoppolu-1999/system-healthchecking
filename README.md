# System Health Check Script

## 📋 Project Description
This project is a simple DevOps demo script that collects basic system information and logs it to a file.

## ⚙️ What It Does
- Shows system date and time  
- Displays uptime and CPU load  
- Shows memory and disk usage  
- Lists top 5 memory-consuming processes  
- Checks if `nginx` and `ssh` services are running  
- Logs everything to `healthlog.txt`

## 🧰 Prerequisites
- Ubuntu (WSL2 on Windows)
- Bash shell
- `systemctl`, `ps`, `df`, `free` commands available

## ▶️ How to Run
```bash
chmod +x healthcheck.sh
./healthcheck.sh
