#!/bin/bash

# Function to reverse a number
reverse_number() {
  num=$1
  reversed=0

  while [ $num -gt 0 ]; do
    digit=$((num % 10))
    reversed=$((reversed * 10 + digit))
    num=$((num / 10))
  done

  echo $reversed
}

# Prompt the user to enter a number
read -p "Enter a number: " input_number

# Check if the input is a valid number
if ! [[ $input_number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi

# Call the function to reverse the number
result=$(reverse_number $input_number)

# Print the result
echo "Reversed number: $result"
