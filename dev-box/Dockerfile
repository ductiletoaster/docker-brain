FROM ubuntu:latest
MAINTAINER Brian Gebel <briangeb@gmail.com>

RUN \
  apt-get update \
  && apt-get autoremove \
  && apt-get -y install \
    grep \
    software-properties-common \
    python-software-properties \
    build-essential \
    curl \
    git-core \
    zsh \
    memcached \
    php \
    php-bcmath \
    php-cli \
    php-common \
    php-dev \
    php-fpm \
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
    phpunit \
    vim \
  && curl -sS https://getcomposer.org/installer -o composer-setup.php \
  && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
  && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
