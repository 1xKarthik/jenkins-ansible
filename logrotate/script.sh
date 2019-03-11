#!/bin/bash

#DEBUG=0
for i in $@
do
DEBUG=cat $i | grep DEBUG
echo $DEBUG

#dEBUG)
#echo "qwe"
#cat $i | grep DEBUG
#cat $i | grep DEBUG | wc -l ;;
#INFO)
#cat $i | grep INFO
#cat $i | grep INFO | wc -l ;;
#esac
done
