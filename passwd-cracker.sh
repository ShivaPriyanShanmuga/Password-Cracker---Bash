#!/bin/bash

if ! command -v john &> /dev/null
then
    echo "John the Ripper has not been installed"
    exit 1
fi

if [ $# -ne 1 ]
then
    echo "use by: $0 <hashfile>"
    exit 1
fi

hash_file=$1

if [ ! -r "$hash_file" ]
then
    echo "Error: file $hash_file isn't found or isn't readable"
    exit 1
fi

# now we can just run john on the hash file provided
echo "[+] Running John the Ripper on $hash_file ..."
john "$hash_file"

echo "[+] showing cracked passwords:"
john --show "$hash_file"