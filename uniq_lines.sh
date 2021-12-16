#!/bin/bash
# Name: Kevin Wong
# Date: 11/6/21
# File: uniq_lines.sh
# Desc: This script sorts "phonebook.txt" then removes duplicate lines
	# then returns the output into variable "namelist"

echo "# your file has been sorted" 
echo "# removing duplicate lines"
echo "# your output is stored in variable \"namelist\""
echo "# the below is what was stored inside \"namelist\""
namelist=$(sort /users/dputnam/public_html/phonebook.txt | uniq)
echo $namelist

