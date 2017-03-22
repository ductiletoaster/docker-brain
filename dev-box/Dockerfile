FROM ubuntu:17.04
MAINTAINER Brian Gebel <briangeb@gmail.com>

RUN \
  apt-get update \
  && apt-get -y install \
    software-properties-common \
    python-software-properties \
    curl \
    git-core \
    zsh \
    npm \
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
    php-xmlrpc \
    phpunit \
    vim \
  && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php composer-setup.php \
  && mv composer.phar /usr/sbin/composer \
  && chmod a+x /usr/sbin/composer \
  && groupadd brain \
  && useradd -d /home/brain -m -s /bin/zsh brain \
  && git clone git://github.com/robbyrussell/oh-my-zsh.git /home/brain/.oh-my-zsh \
  && chown -R brain:brain /home/brain/.oh-my-zsh && \
  && chmod 0755 /home/brain/.oh-my-zsh \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

ADD config/.zshrc /home/brain

USER brain
