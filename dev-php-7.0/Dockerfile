FROM alpine:3.7

# Use the same alpine as the git one
# enable community repo https://wiki.alpinelinux.org/wiki/Enable_Community_Repository
# install php and what not manually

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community" >> /etc/apk/repositories

RUN apk update \
	&& apk upgrade \
	&& apk add php-bcmath \
    php-common \
    php-dev \
    php-mbstring \
    php-mcrypt \
    php-memcached \
    php-mysqlnd \
    php-opcache \
    php-pdo \
    php-pear \
    php-xml \
    php-gd \
    php-pgsql \
    php-intl \
    php-xdebug \
    php-xmlrpc \
    phpunit

ENTRYPOINT ["php"]