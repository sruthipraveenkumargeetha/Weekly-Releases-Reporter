#!/bin/bash

# Fetch release data using curl
release_data=$(curl -s "https://api.example.com/weather")  # Replace with the actual API endpoint

# Email configuration
recipient="sruthi17pg@gmail.com"  # Replace with your email address
subject="Weekly Release Report"

# Send email
echo "$release_data" | mail -s "$subject" "$recipient"
