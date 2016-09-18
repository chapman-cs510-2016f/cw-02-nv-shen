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
		FILENAME="`echo \"file00${i}.tmp\"`"
	elif [ $i -ge 10 -a $i -lt 100 ]
	then
		FILENAME="`echo \"file0${i}.tmp\"`"
	else
		FILENAME="`echo \"file${i}.tmp\"`"
	fi
		touch -f ${BASEDIR}/tmpfiles/${FILENAME}

done


#append the line Temporary file XXX to each one, where "XXX" is the number in the filename.
ls -l ${BASEDIR}/tmpfiles | grep file | sort -n | awk '{print $NF}' | while read FILENAME
do
	FILENUM=`echo $FILENAME | sed 's/file\([0-9]*\).tmp/\1/' `
	echo "Temporary file ${FILENUM}" > ${BASEDIR}/tmpfiles/${FILENAME}	
done

exit 0



### INSTRUCTOR COMMENTS
# This is quite the elaborate implementation, using a large number of UNIX tools.
# I would suggest seeking simplicity. Good bash coding is almost a zen experience.
# Compare to a possible implementation below (omitting comments):
# 
# if [ -d tmpfiles ]; then rm -rf tmpfiles; fi
# mkdir -p tmpfiles
# touch tmpfiles/file{001..100}.tmp
# for i in $(seq -w 100); do echo $i >> tmpfiles/file$i.tmp; done
#
