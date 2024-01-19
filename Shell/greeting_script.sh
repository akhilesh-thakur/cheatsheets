#!/bin/bash

# Simple Greeting Script

# Prompt the user for their name
echo "Hello! What is your name?"

# Read user input into the variable 'name'
read name

# Display a personalized greeting
echo "Nice to meet you, $name! How's your day going?"

# Ask the user for their mood
echo "By the way, how are you feeling today? (Happy/Sad/Neutral)"

# Read user input into the variable 'mood'
read mood

# Provide a response based on the user's mood
case $mood in
  "Happy")
    echo "Great to hear that, $name! Keep spreading the positivity."
    ;;
  "Sad")
    echo "I'm sorry to hear that, $name. If you need to talk, I'm here."
    ;;
  "Neutral")
    echo "Alright, $name. If there's anything on your mind, feel free to share."
    ;;
  *)
    echo "I didn't recognize that mood. Let's hope it's a good one, $name!"
    ;;
esac

# Display a farewell message
echo "Thanks for chatting, $name! Have a wonderful day."
