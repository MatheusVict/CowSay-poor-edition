#!/bin/bash

if [ $# -ne 1]; then
    echo "Use: $0 <string>"
    exit 1
fi

input="$1"

hyphen=""

for ((i=0; i<${#input}; i++)); do 
    hyphen="$hyphen-"
done

cow() {
    local hypen=$(printf '%*s' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '-')
    printf "\n%s\n" "$hyphen"
    printf "< %s >\n" "$1"
    printf "%s\n" "$hyphen"
    printf "        \\   ^__^\n"
    printf "         \\  (oo)\\_______\n"
    printf "            (__)\\       )\\/\n"
    printf "                ||----w |\n"
    printf "                ||     ||\n"

}

cow "$input"
