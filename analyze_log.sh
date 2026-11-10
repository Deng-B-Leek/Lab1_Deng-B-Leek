
#!/bin/bash

# Use the supplied filename or the default log file
LOG_FILE="${1:-transit_session.log}"

# Check whether the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file '$LOG_FILE' does not exist."
    exit 1
fi

# Count sessions, zebra crossing stops, and lane changes
SESSIONS=$(grep -cF "===== New session started" "$LOG_FILE")
ZEBRA_STOPS=$(grep -cF "Zebra crossing! Stopping" "$LOG_FILE")
LANE_CHANGES=$(grep -cF "Changing lane:" "$LOG_FILE")

# Get driver name from the latest trip report
DRIVER=$(grep -E "Driver[[:space:]]*:" "$LOG_FILE" | tail -n 1 | sed -E 's/.*Driver[[:space:]]*:[[:space:]]*//')

# Get top speed from the latest trip report
TOP_SPEED=$(grep -E "Top speed[[:space:]]*:" "$LOG_FILE" | tail -n 1 | sed -E 's/.*Top speed[[:space:]]*:[[:space:]]*//')

# Display the summary
echo "========== KIGALI ROAD LOG ANALYSIS =========="
echo "Log file: $LOG_FILE"
echo "Total sessions: $SESSIONS"
echo "Zebra crossing stops: $ZEBRA_STOPS"
echo "Lane changes: $LANE_CHANGES"
echo "Latest driver: ${DRIVER:-Not found}"
echo "Latest top speed: ${TOP_SPEED:-Not found}"
echo "==============================================="
