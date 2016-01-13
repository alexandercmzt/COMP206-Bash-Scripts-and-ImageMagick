#!/bin/bash
kill `ps -A -o pid,uid,comm | grep $UID | grep less | grep -v q2b | awk '{print $1}'`
exit
