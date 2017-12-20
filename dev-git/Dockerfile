FROM alpine:3.7

RUN apk update \
	&& apk upgrade \
	&& apk add git

RUN git --version

COPY scripts/entry.sh /

ENTRYPOINT ["/entry.sh"]