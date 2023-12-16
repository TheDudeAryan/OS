read -p "Enter a number: " number
if ! [[ $number =~ ^[0-9]+$ ]]; then
  echo "Error: Please enter a valid number."
  exit 1
fi
echo "Multiplication table for $number:"
for i in {1..10}; do
  result=$((number * i))
  echo "$number * $i = $result"
done
