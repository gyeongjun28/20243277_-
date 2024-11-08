#!/bin/bash
folder_name=$1
if [ -d "$folder_name" ]; then
	echo "$folder_name folder already exists"
else
	echo "Creating the folder $folder_name."
	mkdir "$folder_name"
fi
cd "$folder_name"
for i in {0..4}; do
	touch "file$i.txt"
done
tar -cvf files.tar file*.txt
mkdir -p extracted_files
mv files.tar extracted_files/
cd extracted_files
tar -xvf files.tar
