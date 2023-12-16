read -p "Enter the path of the first file: " file1
read -p "Enter the path of the second file: " file2
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
  echo "Error: Please enter valid file paths."
  exit 1
fi
if cmp -s "$file1" "$file2"; then
  echo "The files are equal."
  read -p "Do you want to delete one of the files? (yes/no): " delete_option
  if [ "$delete_option" == "yes" ]; then
    read -p "Enter the number of the file to delete (1 or 2): " file_to_delete
    case $file_to_delete in
      1)
        rm "$file1"
        echo "File 1 deleted."
        ;;
      2)
        rm "$file2"
        echo "File 2 deleted."
        ;;
      *)
        echo "Invalid option. No files were deleted."
        ;;
    esac
  else
    echo "No files were deleted."
  fi
else
  echo "The files are not equal."
fi
