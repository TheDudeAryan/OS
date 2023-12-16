calculate_factorial() {
  if [ $1 -eq 0 -o $1 -eq 1 ]; then
    echo 1
  else
    echo $(( $1 * $(calculate_factorial $(( $1 - 1 ))) ))
  fi
}
read -p "Enter a number: " number
if ! [[ $number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi
result=$(calculate_factorial $number)
echo "Factorial of $number is: $result"
