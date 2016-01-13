#!/bin/bash
while true
do
SHT=`ps -A -o nice,comm,uid | grep sleep | grep $UID | awk '{print $1}'`
if [ "$SHT" == "" ];
then
SHT=15
fi
#the above is just to avoid errors when SHT is an empty string
if [ "$SHT" -lt "5" ];
then 
kill `ps -A -o pid,comm,uid | grep sleep | grep $UID | awk '{print $1}'`
fi
done
