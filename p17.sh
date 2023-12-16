read -p "Enter the start month (1-12): " start_month
read -p "Enter the end month (1-12): " end_month
read -p "Enter the year: " year

if [ "$start_month" -lt 1 -o "$start_month" -gt 12 ]; then
  echo "Error: Invalid start month. Month should be between 1 and 12."
  exit 1
fi

if [ "$end_month" -lt 1 -o "$end_month" -gt 12 ]; then
  echo "Error: Invalid end month. Month should be between 1 and 12."
  exit 1
fi

if [ "$start_month" -gt "$end_month" ]; then
  echo "Error: Start month should be less than or equal to end month."
  exit 1
fi

if [ "$year" -lt 1 ]; then
  echo "Error: Invalid year. Year should be a positive number."
  exit 1
fi

for ((month = start_month; month <= end_month; month++)); do
  cal $month $year
  echo ""
done
