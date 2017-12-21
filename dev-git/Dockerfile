FROM alpine:3.7

# Install git and openssh
RUN apk update \
	&& apk upgrade \
	&& apk add git \
	&& apk add openssh

# Clean up apk
RUN rm -rf /var/lib/apt/lists/* \
	 && rm /var/cache/apk/*

WORKDIR /root

COPY config/.gitconfig .gitconfig
COPY config/.ssh .ssh

# Need to set permissions on the .ssh
# Need a way to save known_hosts :(
# Need to get these from .env
RUN git config --global user.email "bgebel@gofundme.com"
RUN git config --global user.name "Brian Gebel"

COPY scripts/entry.sh entry.sh

ENTRYPOINT ["sh", "entry.sh"]