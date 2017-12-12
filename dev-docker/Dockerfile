FROM docker:latest
MAINTAINER Brian Gebel <bgebel@gofundme.com>

# Install docker-compose, awscli and jq
RUN apk update \
	&& apk upgrade \
	&& apk add py-pip \
	&& pip install docker-compose \
	&& pip install awscli