#!/bin/bash
if [ -d "$1" 2>/dev/null ]
then
cd $1
pwd
else
echo "Error: Please enter a valid directory as the command line argument"
exit 1
fi
echo $1
outputfile="`echo $1 | tr '[/]' '_'`"
extension='.jpg'
outputfile="$outputfile$extension"
convert -append `find . -printf "%T+\t%p\n" | grep .jpg | sort | awk '{print $2}'` $outputfile
echo $outputfile created
