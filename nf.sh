#!/bin/bash
# Name: Kevin Wong(kwong43)
# File: number of files (nf)
# Desc: returns the number of regular files In current directory

echo "#number of regular files in current directory"
pwd
find -maxdepth 1 -type f | wc -l
