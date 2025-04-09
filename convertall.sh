#! /bin/bash

# not done. probably wrong

for file in *; do
	if [ -f "$file"]; then
		sh convert.sh "$file"
	fi
done
# pandoc --from markdown --to html $1 -o $1.html
