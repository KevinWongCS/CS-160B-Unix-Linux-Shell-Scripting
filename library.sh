# Name: kevin wong 
# File: library.sh
# Date: Tue Dec  7 11:36:41 PST 2021 
# Desc: functions, join_with(), cube(), chg_case(), go2(), chmod_remote() from week 7 lab

#--------------------------------------------------------------
# Desc: 4. join_with: joins positional parameters ($#) with $1 as a delimiter
#--------------------------------------------------------------
join_with () {

	echo -e "Joining parameters with $1"

	# assigns first argument to variable "delimiter"
	delimiter=$1
	
	# left shifts arguments by 1
	shift
	
	# counter for printing delimiter
	counter=1
	
	# function	
	for parameter in "$@" 
	do
		echo -e "$parameter\c"
		
		# prints delimiter
		if [ $counter -lt "$#" ]
		then
			echo -e "$delimiter\c"
			(( counter++ ))
		fi 
	done
	
	echo ""
	echo "" 

}

#-----------------------------------------------
# Desc: 5. cube: cubes any number of integer arguments
#-----------------------------------------------
cube () {

	# error usage message if incorrect arguments are entered	
	if [ $# -lt 1 ]
	then

		echo "ERROR: usage: cube arg1 arg2 arg3...."
		echo ""
		return 1
	fi	
	
	# function
	echo -e "cubing $*"
	
	for number in "$@"
	do 
		printf "%6d cubed: %20d\n" $number $(( $number * $number * $number  ))
	done

	echo ""

}
 
#-------------------
# Desc: 6. chg_case: convert a string to all uppercase or lowercase
#-------------------
chg_case () {
	
	# tolower from standard input(piped "|" in)
	if [ $1 = 'tolower' -a $# -eq 1 ]
        then
                read line
                printf "%s " $(echo $line | tr '[A-Z]' '[a-z]')
        	printf "\n"
	fi
	
	# tolower from positional argument
	if [ $1 = 'tolower' -a $# -ne 1 ]
	then
		shift

                printf "%s " $(echo "$*" | tr '[A-Z]' '[a-z]')
		printf "\n"
	fi
	
	# toupper from standard input(piped "|" in)
        if [ $1 = 'toupper' -a $# -eq 1 ]
        then
                read line
                printf "%s " $(echo $line | tr '[a-z]' '[A-Z]')
                printf "\n"
        fi

        # toupper from positional argument
        if [ $1 = 'toupper' -a $# -ne 1 ]
        then
                shift

                printf "%s " $(echo "$*" | tr '[a-z]' '[A-Z]')
                printf "\n"
        fi
	
	echo ""	
}

#-------------------------------
# Desc: 7. go2: cd to a subdirectory
#-------------------------------
go2 () {
	for directory in "$@"
	do
		cd $directory
	done
	echo ""
}


#---------------------------
# Desc: 8. chmod_remote: 
#---------------------------
chmod_remote () {

	# error message if incorrect number of arguments are entered
	if [ $# -lt 4 ]
	then
		echo "ERROR: usage: chmod_remote <server name> <user name> <octal permission> <path>"
		return 1 
	else

		# Using ssh to change the permissions of a file
		echo "changing permission of $4 to $3"
		ssh $2@$1 chmod $3 $4
	fi
	
	echo ""
}
