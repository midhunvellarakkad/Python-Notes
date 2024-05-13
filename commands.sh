#!/bin/bash

# === Configurable Variables ===
month="05"         # MM format (e.g., "01" for Jan)
year="2024"        # YYYY
start_day=1        # Start day
end_day=30         # End day

# Set Git user email globally (do this once outside script if you want)
git config --global user.email "midhunvellarakkad@gmail.com"

# List of random commit messages
messages=(
    "Updated"
    "Improvements"
    "Small refactor"
    "Script update"
    "Added new changes"
    "Minor changes"
    "Improved readability"
)

# Generate random day between start_day and end_day
day=$(( RANDOM % (end_day - start_day + 1) + start_day ))

# Generate random time between 7 PM (19:00) and 11:59 PM (23:59)
hour=$(( RANDOM % 5 + 19 ))   # 19-23
minute=$(( RANDOM % 60 ))
second=$(( RANDOM % 60 ))

# Format date/time with leading zeros
day_padded=$(printf "%02d" $day)
hour_padded=$(printf "%02d" $hour)
minute_padded=$(printf "%02d" $minute)
second_padded=$(printf "%02d" $second)

# Build full commit timestamp
commit_date="${year}-${month}-${day_padded}T${hour_padded}:${minute_padded}:${second_padded}"

# Pick a random commit message
random_msg="${messages[$RANDOM % ${#messages[@]}]}"

# Make a dummy change (optional)
#echo "Log entry $RANDOM" >> dummy.txt

# Add and commit with date set
git add .
GIT_COMMITTER_DATE="$commit_date" git commit --date="$commit_date" -m "$random_msg"

# Show commit info
echo "✅ Committed on $commit_date — \"$random_msg\""

# Push the commit
git push
