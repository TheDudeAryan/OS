addition() {
  echo $(($1 + $2))
}
subtraction() {
  echo $(($1 - $2))
}
multiplication() {
  echo $(($1 * $2))
}
division() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
  else
    echo $(($1 / $2))
  fi
}
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter the operation (1/2/3/4): " operation
case $operation in
  1)
    result=$(addition $num1 $num2)
    echo "Result: $result"
    ;;
  2)
    result=$(subtraction $num1 $num2)
    echo "Result: $result"
    ;;
  3)
    result=$(multiplication $num1 $num2)
    echo "Result: $result"
    ;;
  4)
    result=$(division $num1 $num2)
    echo "Result: $result"
    ;;
  *)
    echo "Error: Invalid operation."
    ;;
esac
