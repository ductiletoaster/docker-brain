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

# Copy and update ssh keys
COPY config/.ssh .ssh
RUN chmod 700 ~/.ssh && chmod 600 ~/.ssh/*

# Need to get these from .env
COPY config/.gitconfig .gitconfig
RUN git config --global user.email "bgebel@gofundme.com"
RUN git config --global user.name "Brian Gebel"

# Setup entry point script
COPY scripts/entry.sh entry.sh
ENTRYPOINT ["sh", "entry.sh"]