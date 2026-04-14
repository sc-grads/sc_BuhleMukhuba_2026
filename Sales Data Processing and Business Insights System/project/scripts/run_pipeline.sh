#!/bin/bash

log_file="/mnt/c/sc_BuhleMukhuba_2026/project/output/logs.txt"

echo "Starting data processing at $(date)..." > "$log_file"

python3 /mnt/c/sc_BuhleMukhuba_2026/project/scripts/process_data.py >> "$log_file" 2>&1

echo "Processing complete at $(date)!" >> "$log_file"
