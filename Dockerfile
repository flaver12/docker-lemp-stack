FROM ubuntu:latest
LABEL maintainer=zerbarian@outlook.com

#PHP 7.3
RUN apt-get -y update
RUN apt-get install -y software-properties-common curl
RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y update
RUN apt-get install -y nginx php7.3-cli php7.3-fpm php7.3-bcmath php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-sqlite3 php7.3-xml php7.3-zip

#COMPOSER
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#NODE JS
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get -y install nodejs

#YARN
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get -y update
RUN apt-get -y install yarn

COPY scripts/web-start.sh /
CMD ["./web-start.sh"]