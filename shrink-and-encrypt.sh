#!/bin/sh
key=`cat $1`
echo $key | base64 -D | gzip | wc -c