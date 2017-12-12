FROM ubuntu:rolling
LABEL description="Base Image based on Ubuntu 17.04 Linux"
MAINTAINER Brian Gebel <briangeb@gmail.com>

# Set Environment Variables & Language Environment
ENV HOME /root
ENV DEFAULT_USER root
ENV TERM xterm
ENV USER root
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
  python-pip \
  python-dev \
  grep \
  wget \
  curl \
  git \
  man \
  unzip \
  nano \
  ruby \
  memcached \
  tmux \
  colord \
  vim \
  zsh 

# Install Zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
  && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
  && chsh -s /bin/zsh

# Install Powerline fonts
RUN git clone https://github.com/powerline/fonts.git ~/.powerline \
  && ~/.powerline/install.sh

# Install Node from update PPA
# RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh \
#  && bash nodesource_setup.sh \
#  && apt-get install nodejs

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
  && rm composer-setup.php \
  && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install AWS CLI -- TODO Need to add to PATH
RUN pip install awscli --upgrade --user

# Clean up
RUN apt-get autoremove \
  && apt-get clean 

WORKDIR /root
ADD config/.gitconfig .gitconfig
ADD config/.zshrc .zshrc

CMD ["zsh"]