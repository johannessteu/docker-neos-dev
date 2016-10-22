FROM johannessteu/docker-neos:latest
MAINTAINER Johannes Steu <js@johannessteu.de>

# Install packages
RUN apk update
RUN cat /etc/apk/repositories
RUN apk --update add  \
    git \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN curl -L https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php && \
    rm  composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +rx /usr/local/bin/composer