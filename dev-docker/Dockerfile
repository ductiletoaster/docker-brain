FROM dev-base:latest
MAINTAINER Brian Gebel <bgebel@gofundme.com>

# Install docker-compose, awscli and jq
RUN apk add bash \
	&& apk add jq \
	&& apk add py-pip \
	&& pip install docker-compose \
	&& pip install awscli

# Clean up apk
RUN rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

CMD ["bash"]