FROM alpine:3.7

RUN apk update \
	&& apk upgrade \
	&& apk add git

WORKDIR /root
COPY config/.gitconfig .gitconfig
COPY scripts/entry.sh entry.sh

ENTRYPOINT ["sh", "entry.sh"]