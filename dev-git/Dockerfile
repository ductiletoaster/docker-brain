FROM alpine:3.7

RUN apk update \
	&& apk upgrade \
	&& apk add git

WORKDIR /root

# TODO: Need to add ssh keys or an ssh server?
COPY config/.gitconfig .gitconfig
COPY scripts/entry.sh entry.sh

ENTRYPOINT ["sh", "entry.sh"]