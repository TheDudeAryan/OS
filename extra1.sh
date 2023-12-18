#!/bin/bash

# Function to generate a descending order number pyramid
generate_descending_number_pyramid() {
  rows=$1

  for ((i = 1; i <= rows; i++)); do
    for ((j = 1; j <= i; j++)); do
      echo -n "$i "
    done
    echo ""
  done
}

# Prompt the user to enter the number of rows
read -p "Enter the number of rows for the descending number pyramid: " num_rows

# Check if the input is a valid positive integer
if ! [[ $num_rows =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Please enter a valid positive integer."
  exit 1
fi

# Generate and display the descending number pyramid
generate_descending_number_pyramid $num_rows
