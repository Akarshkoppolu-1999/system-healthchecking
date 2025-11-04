#!/bin/bash
# healthcheck.sh - System health monitoring script

LOG_FILE="healthlog.txt"

{
  echo "======================"
  echo "Healthcheck: $(date '+%Y-%m-%d %H:%M:%S')"
  echo "======================"
  echo
  echo "-- Date & Time --"
  date
  echo
  echo "-- Uptime & Load --"
  uptime
  echo
  echo "-- Memory Usage (free -m) --"
  free -m
  echo
  echo "-- Disk Usage (df -h) --"
  df -h
  echo
  echo "-- Top 5 Memory-Consuming Processes --"
  ps aux --sort=-%mem | head -n 6
  echo
  echo "-- Checking Services (nginx, ssh) --"
  for service in nginx ssh; do
    if systemctl is-active --quiet $service; then
      echo "$service is running"
    else
      echo "$service is NOT running"
    fi
  done
  echo
  echo "-- End of healthcheck --"
  echo
} >> "$LOG_FILE"
