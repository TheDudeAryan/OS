read -p "Enter a login name: " login_name
valid_login_regex="^[a-zA-Z_][a-zA-Z0-9_]{0,30}$"
if [[ $login_name =~ $valid_login_regex ]]; then
  echo "Valid login name."
else
  echo "Entered login name is invalid."
fi
