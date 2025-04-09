#! /bin/bash

# positional param 1: filename

echo $1 

pandoc --from markdown --to html $1 -o $1.html
