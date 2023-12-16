read -p "Enter the month (1-12): " month
read -p "Enter the year: " year
if [ "$month" -lt 1 -o "$month" -gt 12 ]; then
  echo "Error: Invalid month. Month should be between 1 and 12."
  exit 1
fi
if [ "$year" -lt 1 ]; then
  echo "Error: Invalid year. Year should be a positive number."
  exit 1
fi
cal $month $year
