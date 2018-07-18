#!/bin/bash

while [ 1 ]
do 
	date=`date`
	#echo "$date"

	hrun=`ps -e | grep "healthstats" | grep -v grep`
	urun=`ps -e | grep "updateEngine" | grep -v grep`
	echo "$date : $hrun : $urun"
done


