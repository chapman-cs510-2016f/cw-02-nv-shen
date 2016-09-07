#!/bin/bash

#creates a directory tmpfiles in the working directory
BASEDIR=`pwd`
mkdir -p ${BASEDIR}/tmpfiles
cd ${BASEDIR}/tmpfiles

echo ${BASEDIR}/tmpfiles

#creates 100 files named file001.tmp to file100.tmp in that directory.
for ((i=1;i<=100;i=i+1))
do	
	if [ $i -lt 10 ]
	then 
		FILENAME="`echo \"file00$i\"`"
	elif [ $i -ge 10 -a $i -lt 100 ]
	then
		FILENAME="`echo \"file0$i\"`"
	else
		FILENAME="`echo \"file$i\"`"
	fi
		touch -f ${BASEDIR}/tmpfiles/${FILENAME}

done


#append the line Temporary file XXX to each one, where "XXX" is the number in the filename.
ls -l ${BASEDIR}/tmpfiles | grep file | sort -n | awk '{print $NF}' | while read FILENAME
do
	FILENUM=`echo $FILENAME | sed 's/file//' `
	echo "Temporary file ${FILENUM}" > ${BASEDIR}/tmpfiles/${FILENAME}	
done

exit 0
