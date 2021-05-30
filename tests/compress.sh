#!/bin/bash

if [ $# -ne 1 ]
then
	echo "No filename given"
	read -p "Enter directory to backup: " directory

else
	directory=$1
fi

if [ ! -d "$directory" ]
then
	echo "Directory does not exist"
	echo "Exiting ..."
	exit
fi

tar -czvf "backup.tar.gz" "$directory"

echo "Compressed"

filename="backup.tar.gz"
	read -p "IP: (10.25.137.141)" ipaddress
	read -p "Target Dir: (targetdir)" targetdir
	read -p "Port: (22)" port

	scp -P $port "$filename" student@$ipaddress:"$targetdir"

echo "Backup file copied"


