# dhis2-docker-compose

Added backup service in the compose stack.

Copy .env.TYPE.template to .env and edit the mandatory fields.

# Pull docker image in multiple host

1) Edit the file <host_list.txt> to include the host names where the docker image need to be pulled.
2) Edit the file <image_list.txt> to include the docker image name.
3) Type the command below, <br/>
bash remote_pull.sh private_key < host_list.txt
