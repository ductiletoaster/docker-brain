FROM ubuntu:latest
LABEL description="Base Image based on Ubuntu 16.04 Linux"
MAINTAINER Brian Gebel <briangeb@gmail.com>

# Set Environment Variables & Language Environment
ENV HOME /root
ENV LC_ALL en_US.UTF-8

# Update Base System
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y language-pack-en \
  && locale-gen en_US.UTF-8 \
  && dpkg-reconfigure locales

# Install Basic Packages
RUN apt-get -y install \
  apt-utils \
  build-essential \
  software-properties-common \
  grep \
  wget \
  curl \
  git \
  man \
  unzip \
  nano \
  memcached \
  tmux \
  colord \
  vim \
  zsh 

# Install Zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
  && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
  && chsh -s /bin/zsh

# Install PHP and extensions
RUN \
  apt-get update \
  && apt-get autoremove \
  && apt-get -y install \
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
  && curl -sS https://getcomposer.org/installer -o composer-setup.php \
  && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
  && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Clean up
RUN apt-get autoremove \
  && apt-get clean 

WORKDIR /root
CMD ["zsh"]