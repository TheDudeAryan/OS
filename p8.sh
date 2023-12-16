count_digits() {
  echo -n $1 | wc -c
}
is_armstrong() {
  number=$1
  num_digits=$(count_digits $number)
  temp=$number
  sum=0
  while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** num_digits))
    temp=$((temp / 10))
  done
  if [ $sum -eq $number ]; then
    echo "The number $number is an Armstrong number."
  else
    echo "The number $number is not an Armstrong number."
  fi
}
read -p "Enter a number: " input_number
if ! [[ $input_number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi
is_armstrong $input_number
