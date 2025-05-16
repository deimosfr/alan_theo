#!/bin/bash

# Define signal handler for SIGTERM
sigterm_handler() {
  echo "Received SIGTERM signal, sleeping for 2 minute..."
  sleep 120  # Sleep for 2 minutes
  echo "Exiting after sleep"
  exit 0
}

# Set up the signal trap
trap 'sigterm_handler' SIGTERM

# Main loop to print hostname every 5 seconds
echo "Starting to print hostname every 5 seconds"
while true; do
  hostname
  sleep 5
done 