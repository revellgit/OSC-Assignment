#!/bin/bash

uri="http://kate.ict.op.ac.nz/~faisalh/IN617linux/users.csv"
nouri="http://kate.ict.op.ac.nz/~faisalh/IN617linux/file.csv"

if [[ `wget -S --spider $uri 2>&1 | grep 'HTTP/1.1 200 OK'` ]];
then
	echo "file exists"
else
	echo "File does not exist"
fi

