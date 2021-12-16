#!/bin/bash
# Name: kevin wong
# File: deepdirs
# Desc: creates deep directories using mkdir -p

echo "# creating directory users"
echo "# creating directory users/pat"
echo "# creating directory users/pat/ruth"
echo "# creating directory users/pat/ruth/steve"
echo "# creating directory users/pat/ruth/steve/documents"
echo "# creating directory users/pat/ruth/steve/documents/{letters,memos,proposals}"
echo "# creating directory users/pat/ruth/steve/programs/{collect,mon,wb}"
echo "# creating files ~/users/pat/ruth/steve/documents/letters/AMG.reply no.JSK"
echo "# creating files ~/users/pat/ruth/steve/documents/memos/dact plan"
echo "# creating files ~/users/pat/ruth/steve/documents/proposals/new.hire sys.A"


# note: you can't have spaces in this command after ",". A new directory will be created!!!!!
mkdir -p ~/users/pat/ruth/steve/{documents/{letters,memos,proposals},programs/{collect,mon,wb}}
touch ~/users/pat/ruth/steve/documents/letters/AMG.reply
touch ~/users/pat/ruth/steve/documents/letters/no.JSK
touch ~/users/pat/ruth/steve/documents/memos/dact
touch ~/users/pat/ruth/steve/documents/memos/plan
touch ~/users/pat/ruth/steve/documents/proposals/new.hire
touch ~/users/pat/ruth/steve/documents/proposals/sys.A

