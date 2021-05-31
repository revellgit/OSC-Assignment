#!/bin/bash

filename="users.csv"
count=0
OLDIFS=$IFS
IFS=";"

while read email birthdate groups sharedfolder
do
	if (( count > 0 ));
	then
		echo "Email Address: " $email
		echo "DOB: " $birthdate
		echo "Groups: " $groups
		echo "Shared Folder: " $sharedfolder
	fi
	(( count++ ))
done < $filename

IFS=$OLDIFS
