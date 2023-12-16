who_output=$(who)
num_users=$(echo "$who_output" | wc -l)
sorted_output=$(echo "$who_output" | sort)
echo "Sorted 'who' command output:"
echo "$sorted_output"
echo "Total number of users: $num_users"
