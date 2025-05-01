#!/bin/bash

# Check if Wofi is running by looking for the exact process
if pidof wofi >/dev/null; then
  # If Wofi is running, kill it
  pkill -x wofi
else
  # If Wofi is not running, launch it
  wofi -I --show drun &
fi
