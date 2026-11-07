#!/bin/bash
# Serves Table Blocks and forwards it to a Quest plugged in over USB.
# On the Quest, open the Browser and go to: http://localhost:8080
cd "$(dirname "$0")"
if adb reverse tcp:8080 tcp:8080; then
  echo "Quest connected. In the Quest Browser, open: http://localhost:8080"
else
  echo "No Quest found. Plug it in, accept 'Allow USB debugging' in the headset, then run this again."
fi
python3 -m http.server 8080
