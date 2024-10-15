#!/bin/bash
echo "Running simple shell script..."

# Display the current date and time
echo "Current date: $(date '+%Y-%m-%d')"
echo "Current time: $(date '+%H:%M:%S')"

# Print a custom message
echo "Hello, this is my first shell script!"

# Pause (wait for user input)
read -p "Press any key to continue..." -n1 -s
