FROM alpine:3.7

RUN apk update \
	&& apk upgrade \
	&& apk add git

WORKDIR /root

COPY config/.gitconfig .gitconfig
COPY config/.ssh .ssh

# Need to get these from .env
RUN git config --global user.email "bgebel@gofundme.com"
RUN git config --global user.name "Brian Gebel"

COPY scripts/entry.sh entry.sh

ENTRYPOINT ["sh", "entry.sh"]