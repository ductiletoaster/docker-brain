FROM alpine:3.7
MAINTAINER Brian Gebel <bgebel@gofundme.com>

RUN apk update \
    && apk upgrade

WORKDIR /root
COPY ./home ./
RUN chmod 700 ~/.ssh && chmod 600 ~/.ssh/* \
    && rm .gitignore

VOLUME ["/mnt/c", "/root/share"]

CMD ["/bin/true"]