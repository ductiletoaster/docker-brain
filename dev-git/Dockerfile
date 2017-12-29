# Probably should be a better way -- OUTPUTS OTHER CRAP
FROM dev-package-home:latest AS home

FROM alpine:3.7

# Install git and openssh
RUN apk update \
    && apk upgrade \
    && apk add git \
    && apk add openssh

# Clean up apk
RUN rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

VOLUME ["/root/share"]

# Configure .ssh
WORKDIR /root
COPY --from=home /public ./
RUN chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
RUN rm .gitignore

# Setup entry point script
COPY scripts/entry.sh entry.sh
ENTRYPOINT ["sh", "entry.sh"]