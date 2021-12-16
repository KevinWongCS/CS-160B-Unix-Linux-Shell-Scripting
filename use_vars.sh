#!/bin/bash
# Name: kevin wong
# file: use_vars
# desc: uses variables defined below to return information

echo "# defining variable: docs=~/users/pat/ruth/steve/documents"
echo "# defining variable: lets=\$docs/letters"
echo "# defining variable: props=\$docs/proposals"
echo "# defining variable: mems=\$docs/memos"
echo ""
docs=~/users/pat/ruth/steve/documents
lets=$docs/letters
props=$docs/proposals
mems=$docs/memos


echo "# listing all contents in the documents directory:"
ls -l $docs
echo ""
echo "# copying all files from the letters directory to the proposals directory:"
cp -R $lets/. $props
ls -l $props
echo ""  
echo "# moving all file that begin with a capital letter to current directory"
mv $lets/[A-Z]* .
echo ""
echo "# counting the number of files in the memos directory"
ls $mems/ | wc -l
