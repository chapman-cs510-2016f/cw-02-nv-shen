#!/bin/bash

NUM=$1

#PINTG and NINTG come from http://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash
PINTG='^[0-9]+$'
NINTG='^-[0-9]+$'

#Check if Positive Integer
if [[ $NUM =~ $PINTG ]]
then
	OUTPUT=''
	for ((i=1;i<=${NUM};i++))
	do
		OUTPUT=${OUTPUT}"$i "
	done
	echo ${OUTPUT}

#Check if Negative Integer
elif [[ $NUM =~ $NINTG ]]	
then
	exit 1
#NOT An Integer"
else
	exit 1
fi


exit 0
