#!/bin/bash

THRESHOLD=80
EMAIL="your_email@gmail.com"

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    SUBJECT="⚠️ Disk Space Alert on $(hostname)"
    MESSAGE="Warning: Disk usage is at ${USAGE}% on $(hostname) at $(date)."
    echo "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
else
    echo "Disk usage OK: ${USAGE}%"
fi
