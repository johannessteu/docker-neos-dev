FROM johannessteu/docker-neos:latest
MAINTAINER Johannes Steu <js@johannessteu.de>

RUN apt-get update
RUN apt-get install -y git
RUN curl -L https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php && \
    rm  composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +rx /usr/local/bin/composer