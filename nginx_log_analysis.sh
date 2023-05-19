#!/bin/bash

# Define the log file path
LOG_FILE="/var/log/nginx/access.log"

# Define the report file path
REPORT_FILE="nginx_report.txt"

# Extract relevant metrics from the log file
SUCCESS_COUNT=$(grep -c "HTTP/1\.1\" 200" "$LOG_FILE")
FAIL_COUNT=$(grep -c -E "HTTP/1\.1\" [45][0-9]{2}" "$LOG_FILE")
IP_ADDRESSES=$(awk '{print $1}' "$LOG_FILE" | sort | uniq)

# Generate the report
echo "Nginx Log Analysis Report" > "$REPORT_FILE"
echo "-------------------------" >> "$REPORT_FILE"
echo "Success Files: $SUCCESS_COUNT" >> "$REPORT_FILE"
echo "Fail Files: $FAIL_COUNT" >> "$REPORT_FILE"
echo "IP Addresses: " >> "$REPORT_FILE"
echo "$IP_ADDRESSES" >> "$REPORT_FILE"
