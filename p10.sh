is_prime() {
  num=$1
  if [ $num -lt 2 ]; then
    echo "Not a prime number."
    return
  fi
  for ((i = 2; i * i <= num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      echo "Not a prime number."
      return
    fi
  done
  echo "Prime number."
}
read -p "Enter a number: " input_number
if ! [[ $input_number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi
is_prime $input_number
