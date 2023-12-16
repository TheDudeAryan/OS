calculate_power() {
  base=$1
  exponent=$2
  result=1
  while [ $exponent -gt 0 ]; do
    result=$((result * base))
    exponent=$((exponent - 1))
  done
  echo $result
}
read -p "Enter the base number: " base_number
read -p "Enter the exponent: " exponent
if ! [[ $base_number =~ ^[0-9]+$ && $exponent =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter valid numbers."
  exit 1
fi
result=$(calculate_power $base_number $exponent)
echo "$base_number raised to the power of $exponent is: $result"
