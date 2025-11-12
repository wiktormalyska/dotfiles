#!/usr/bin/env bash
# filepath: /home/wikmal/.config/ashell/restart.sh

# Kill existing ashell processes
pkill -9 ashell

# Wait a moment to ensure process is fully terminated
sleep 0.5

# Start ashell in background
ashell &

# Optional: notify user
if command -v notify-send &> /dev/null; then
    notify-send "Ashell" "Restarted successfully" -t 2000
fi

echo "Ashell restarted"c