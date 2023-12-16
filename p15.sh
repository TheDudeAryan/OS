check_permissions() {
  file=$1
  if [ ! -e "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
  fi
  if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
    echo "The file '$file' has read, write, and execute permissions for the owner, group, and others."
  else
    echo "The file '$file' does not have all permissions for the owner, group, and others."
  fi
}
read -p "Enter the path of the file: " file_path
check_permissions "$file_path"

