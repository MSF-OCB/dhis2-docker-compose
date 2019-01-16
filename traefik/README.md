To do before launching the containers

docker network create web

Fill in the FRONT-END rule in .env (with the WEB URL)

in /traefik

touch acme.json && chmod 600 acme.json

docker-compose up -d

traefik api is on port 8888