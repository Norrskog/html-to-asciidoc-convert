#!/bin/bash

# Check that a folder has been provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: ./convert_html_to_adoc.sh folder"
  exit 1
fi

# Get the name of the folder and create a new folder with "-adoc" appended
folder=$1
new_folder="${folder}-adoc"
mkdir $new_folder

# Copy all files and folders recursively from the original folder to the new folder
cp -r "${folder}/." "${new_folder}"

# Loop through each HTML file in the folder and convert it to AsciiDoc format
for file in $(find "${new_folder}" -type f -name "*.html"); do
  filename=$(basename -- "$file")
  extension="${filename##*.}"
  filename="${filename%.*}"
  pandoc -s "$file" -o "${new_folder}/${filename}.adoc"
  rm "$file"
done

echo "Conversion complete. AsciiDoc files saved to ${new_folder}"
