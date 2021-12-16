#!/usr/bin/bash 
# Name: kevin wong 
# File: sed.sh
# Date: Wed Nov 17 13:16:32 PST 2021 
# Desc: removes 10 lines from txt file using sed

# echo ""
# echo "# removing first 10 lines from $1"
# echo "# $(cat $1 | wc -l) lines in $1"
echo ""
cat $1 | sed '1, 10d' > temp
# echo ""
# echo "done removing first 10 lines from $1"
# echo "# $(cat $1 | wc -l) lines in $1"
# echo ""
