#!/bin/bash

# Function to generate a right-angled pyramid
generate_right_angled_pyramid() {
  rows=$1

  for ((i = 1; i <= rows; i++)); do
    for ((j = 1; j <= i; j++)); do
      echo -n "* "
    done
    echo ""
  done
}

# Function to generate an inverted right-angled pyramid
generate_inverted_right_angled_pyramid() {
  rows=$1

  for ((i = rows; i >= 1; i--)); do
    for ((j = 1; j <= i; j++)); do
      echo -n "* "
    done
    echo ""
  done
}

# Prompt the user to enter the number of rows
read -p "Enter the number of rows for pyramids: " num_rows

# Check if the input is a valid positive integer
if ! [[ $num_rows =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Please enter a valid positive integer."
  exit 1
fi

# Generate and display the pyramids
echo "Right-angled pyramid:"
generate_right_angled_pyramid $num_rows

echo -e "\nInverted right-angled pyramid:"
generate_inverted_right_angled_pyramid $num_rows