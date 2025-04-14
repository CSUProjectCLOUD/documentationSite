#! /bin/bash


for file in *.docx; do
	echo "heehee"
	echo "$file"	
	pandoc --from docx --to markdown "$file" -o "$file".md
done
# pandoc --from markdown --to html $1 -o $1.html
