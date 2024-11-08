#!/bin/bash
files=("file0.txt" "file1.txt" "file2.txt" "file2.txt" "file3.txt" "file4.txt")

for file in "${files[@]}"
do
	touch "$file"
	folder="${file%.*}"
	mkdir "$folder"
	ln -s "../$file" "$folder/$file"
done


