#!/bin/sh
key_header="-----BEGIN OPENSSH PRIVATE KEY-----"
key_footer="-----END OPENSSH PRIVATE KEY-----"

key=`cat $1`
key=${key#$key_header}
key=${key%$key_footer}
echo $key
# echo $key | base64 -D | gzip | openssl enc -aes-256-cbc -salt