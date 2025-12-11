#!/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_WAIT=1200 # 20 minutes

while true; do
  # 1. Show the cow
  random_word=$(shuf -n 1 "$script_dir/nouns.txt")
  clear && echo "$random_word" | cowsay

  # 2. countdown loop
  count=0
  while [ $count -lt $TARGET_WAIT ]; do
    # Sleep 1 second at a time
    sleep 1

    # Calculate difference between start of loop and now
    # But since 'sleep' exits immediately if we paused for a long time,
    # we just trust the loop iteration count here for simplicity.
    ((count++))
  done
done