calculate_gcd() {
  a=$1
  b=$2

  while [ $b -ne 0 ]; do
    remainder=$((a % b))
    a=$b
    b=$remainder
  done

  echo $a
}
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
if ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter valid numbers."
  exit 1
fi
result=$(calculate_gcd $num1 $num2)
echo "GCD of $num1 and $num2 is: $result"
