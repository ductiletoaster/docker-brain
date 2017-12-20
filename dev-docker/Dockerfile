FROM docker:latest
MAINTAINER Brian Gebel <bgebel@gofundme.com>

# Install docker-compose, awscli and jq
RUN apk update \
	&& apk upgrade \
	&& apk add bash \
	&& apk add jq \
	&& apk add py-pip \
	&& pip install docker-compose \
	&& pip install awscli


# Need to clean up apk some how

# Setup config
WORKDIR /root
COPY config/ ./
RUN rm .gitignore && ls -la

CMD ["bash"]