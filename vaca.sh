#!/bin/bash

# Get the directory of the script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Infinite loop to display a random word every 20 minutes
while true; do
  # Pick a random word from nouns.txt in the same directory as the script
  random_word=$(shuf -n 1 "$script_dir/nouns.txt")

  # Display the word using cowsay
  clear && echo "$random_word" | cowsay

  # Wait for 20 minutes (1200 seconds)
  sleep 1200
done