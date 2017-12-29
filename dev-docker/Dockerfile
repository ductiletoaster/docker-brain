FROM dev-package-home:latest AS home

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
COPY --from=home /public ./
RUN chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
RUN rm .gitignore

CMD ["bash"]