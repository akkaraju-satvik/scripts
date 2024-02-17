#!/bin/bash

read -p "Enter the path of the file to upload: " path

echo "Uploading $path"
message=$(curl --silent --upload-file $path https://transfer.sh/$(basename $path))
echo "File uploaded successfully @ $message"
