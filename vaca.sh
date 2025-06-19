#!/bin/bash

# Infinite loop to display a random word every 20 minutes
while true; do
  # Pick a random word from nouns.txt
  random_word=$(shuf -n 1 nouns.txt)

  # Display the word using cowsay
  clear && echo "$random_word" | cowsay

  # Wait for 20 minutes (1200 seconds)
  sleep 1200
done