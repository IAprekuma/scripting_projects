#!/bin/bash
#Author: Ingo Erik Aprekuma 
#Created: 12/14/2022 
#Last Modified: 12/17/2022

#Description: This script deletes files that haven't been modified for a certain amount of time.  

#Usage: cruft_remover.sh

read -p "Which folder do you want to remove cruft from? " folder_name
read -p "How many days should a file be unmodified to be considered as cruft? " timeline

readarray -t search_result < <(find "${folder_name[@]}" -maxdepth 6 -type d,f -mtime "$timeline")

for i in "${search_result[@]:1}";do
        echo "Do you want to delete this file? " && rm -i "$i"
done
