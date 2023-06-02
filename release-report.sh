#!/bin/bash

# Fetch release data using curl
# Calculate the last Friday
start_date=$(date -d "last Friday" +"%Y-%m-%d")

# Calculate the following Friday
end_date=$(date -d "$start_date + 7 days" +"%Y-%m-%d")

# Make the API request using curl
release_data=$(curl -s --request GET \
  --url "https://api.themoviedb.org/3/discover/movie?api_key=24bdf946bd1af77401fdbc8b97fe0d4b&primary_release_date.gte=$start_date&primary_release_date.lte=$end_date")

# Email configuration
recipient="sruthi17pg@gmail.com"  # Replace with your email address
subject="Weekly Release Report"

# Send email
echo "$release_data" | mail -s "$subject" "$recipient"
