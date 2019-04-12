#!/bin/sh
key_header="-----BEGIN OPENSSH PRIVATE KEY-----\n"
key_footer="\n-----END OPENSSH PRIVATE KEY-----"

key=`openssl enc -d -aes-256-cbc -salt -in $1 | gzip -d | base64`
key="$key_header$key$key_footer"
echo $key
# echo $key | base64 -D | gzip | openssl enc -aes-256-cbc -salt