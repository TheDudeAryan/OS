calculate_digit_sum() {
  num=$1
  sum=0
  while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
  done
  echo $sum
}
read -p "Enter a number: " input_number
if ! [[ $input_number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi
result=$(calculate_digit_sum $input_number)
echo "Sum of digits of $input_number is: $result"
