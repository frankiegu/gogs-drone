#!/bin/sh

# remove directories
rm -rf gogs drone

# create new empty directories
# shellcheck disable=SC2039
mkdir  -p ./{gogs,drone}

# remove docker containers
docker rm -f gogs drone-server drone-agent

# build docker containers
docker-compose up --build -d