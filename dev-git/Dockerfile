FROM alpine:latest
RUN apk update \
	&& apk upgrade \
	&& apk add git

RUN git --version

ENTRYPOINT ["git"]