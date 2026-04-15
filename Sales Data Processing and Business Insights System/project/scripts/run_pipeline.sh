#!/bin/bash

log_file="/mnt/c/sc_BuhleMukhuba_2026/Sales Data Processing and Business Insights System/project/output/logs.txt"

echo "Starting data processing at $(date)..." > "$log_file"

"/mnt/c/sc_BuhleMukhuba_2026/Sales Data Processing and Business Insights System/project/venv/bin/python" "/mnt/c/sc_BuhleMukhuba_2026/Sales Data Processing and Business Insights System/project/scripts/process_data.py" >> "$log_file" 2>&1

echo "Processing complete at $(date)!" >> "$log_file"
