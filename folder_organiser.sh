#!/bin/bash
#Author: Ingo Erik Aprekuma
#Created: 17/12/2022
#Last Modified: 27/12/2022

#Description: This script will organise files in a given folder into sub folders based on their extensions. 

#Usage: folder_organiser.sh

read -p "Enter a path to the folder you want to organise: " folder_path
while read line; do 
	case "$line" in 
		*.jpeg|*.jpg|*.png ) 
			if [ -e "$folder_path/images" ]; then 
			    mv "$folder_path/$line" "$folder_path/images"
			else 
			    mkdir "$folder_path/images"
			    mv "$folder_path/$line" "$folder_path/images"
			fi;;
		 
		*.doc|*.docx|*.txt|*.pdf ) 
                        if [ -e "$folder_path/documents" ];then 
                            mv "$folder_path/$line" "$folder_path/documents"
                        else 
			    mkdir "$folder_path/documents"
                            mv "$folder_path/$line" "$folder_path/documents"
			fi;;
		
		*.xls|*.xlsx|*.csv )
                        if [ -e "$folder_path/spreadsheets" ];then 
                            mv "$folder_path/$line" "$folder_path/spreadsheets"
                        else 
			    mkdir "$folder_path/spreadsheets"
                            mv "$folder_path/$line" "$folder_path/spreadsheets"
                        fi;;

		*.sh )
                        if [ -e "$folder_path/scripts" ];then 
                            mv "$folder_path/$line" "$folder_path/scripts"
                        else 
			    mkdir "$folder_path/scripts"
                            mv "$folder_path/$line" "$folder_path/scripts"
                        fi;;

		*.zip|*.tar|*.tar.gz|*.tar.bz2 )
                        if [ -e "$folder_path/archives" ];then 
                                mv "$folder_path/$line" "$folder_path/archives"
                        else 
			    mkdir "$folder_path/archives"
                            mv "$folder_path/$line" "$folder_path/archives"
                        fi;;

		*.ppt|*.pptx )
                        if [ -e "$folder_path/presentations" ];then 
                            mv "$folder_path/$line" "$folder_path/presentations"
                        else 
			    mkdir "$folder_path/presentations"
                            mv "$folder_path/$line" "$folder_path/presentations"
                        fi;;

		*.mp3 )
                        if [ -e "$folder_path/audio" ];then 
                            mv "$folder_path/$line" "$folder_path/audio"
                        else 
			    mkdir "$folder_path/audio"
                            mv "$folder_path/$line" "$folder_path/audio"
                        fi;;

		*.mp4 )
                        if [ -e "$folder_path/video" ];then 
                            mv "$folder_path/$line" "$folder_path/video"
                        else 
			    mkdir "$folder_path/video"
                            mv "$folder_path/$line" "$folder_path/video"
                        fi;;

		\?) echo "This extension is unsupported. File will be left in current folder." ;;
	esac
done < <(ls "$folder_path")

 
