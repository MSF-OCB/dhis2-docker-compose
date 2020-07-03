#!/bin/bash
KEY=$1

if [ -z "${KEY}" ]; then
    echo "usage: remote_pull.sh <private_key> < host_list.txt"
      exit 1
fi

eval $(ssh-agent)
ssh-add "${KEY}"

while read host; do
    echo "------------ PULLING DOCKER IMAGE IN " + ${host} + "--------"
    ssh -t -i $1 ${host} < ./image_list.txt
    echo "-------------- DOCKER IMAGE IS PULLED IN " + ${host} " -----------------"
  done

ssh-agent -k
