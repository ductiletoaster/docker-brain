FROM dev-base:latest
MAINTAINER Brian Gebel <bgebel@gofundme.com>

# Install git and openssh
RUN apk add git \
    && apk add openssh

# Clean up apk
RUN rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

# Setup entry point script
COPY scripts/entry.sh entry.sh
ENTRYPOINT ["sh", "entry.sh"]