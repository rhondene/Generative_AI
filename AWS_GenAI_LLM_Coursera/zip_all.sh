#!/bin/bash

# Define the directory containing the folders to zip
DIRECTORY="./"  # Change this to the directory path as needed

# Create a zipped file for each folder in the directory
for folder in "$DIRECTORY"*/; do
    # Check if it's a directory
    if [ -d "$folder" ]; then
        # Get the folder name without the trailing slash
        folder_name=$(basename "$folder")
        # Create a zip file with the folder name
        zip -r "${folder_name}.zip" "$folder"
        echo "Zipped $folder into ${folder_name}.zip"
    fi
done

echo "All folders have been zipped!"
