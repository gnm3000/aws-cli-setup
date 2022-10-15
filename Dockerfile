FROM python:3.8.2-alpine3.11

RUN pip3 install --no-cache-dir awscli==1.18.178

RUN apk add --no-cache jq groff less

WORKDIR /aws
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#ENTRYPOINT [ "aws" ]

# Container image that runs your code
#FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]