read -p "Enter the number of rows: " num_rows
if ! [[ $num_rows =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Please enter a valid positive integer."
  exit 1
fi
for ((i = 1; i <= num_rows; i++)); do
  for ((j = i; j < num_rows; j++)); do
    echo -n " "
  done
  for ((k = 1; k <= (2 * i - 1); k++)); do
    echo -n "*"
  done
  echo
done
