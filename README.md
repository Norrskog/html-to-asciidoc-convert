# HTML to AsciiDoc Converter

A simple Bash script to convert HTML files in a folder into AsciiDoc (.adoc) format.

## Requirements

- Bash shell (Linux / macOS / WSL on Windows)
- Pandoc installed and available in PATH (`sudo apt install pandoc` on Ubuntu)
- Access to the folder containing HTML files

## Installation

1. Download `convert_html_to_adoc.sh` from this repository.  
2. Make it executable:

```bash
chmod +x convert_html_to_adoc.sh
```

## Usage

1. Open a terminal and navigate to the folder containing your HTML files.  
2. Run the script and provide the folder name as an argument:

```bash
./convert_html_to_adoc.sh folder_name
```

3. The script will create a new folder named `folder_name-adoc` with all HTML files converted to `.adoc`.  
   Original HTML files will be removed from the new folder.

Example:

```bash
./convert_html_to_adoc.sh my_website
```

Output:

```
Conversion complete. AsciiDoc files saved to my_website-adoc
```

## Notes

- Make sure Pandoc is installed and available in your PATH.  
- The script preserves the folder structure and converts all `.html` files recursively.  
- Original files in the source folder are not modified. Only copies in the new folder are converted and old HTML files are deleted there.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
