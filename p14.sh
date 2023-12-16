merge_sort_display() {
  cat "$1" "$2" "$3" > merged_file.txt
  sort merged_file.txt > sorted_file.txt
  more sorted_file.txt
  rm merged_file.txt sorted_file.txt
}
read -p "Enter the path of the first file: " file1
read -p "Enter the path of the second file: " file2
read -p "Enter the path of the third file: " file3
if [ ! -f "$file1" ] || [ ! -f "$file2" ] || [ ! -f "$file3" ]; then
  echo "Error: Please enter valid file paths."
  exit 1
fi
merge_sort_display "$file1" "$file2" "$file3"

