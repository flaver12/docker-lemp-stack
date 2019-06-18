FROM ubuntu:latest
LABEL maintainer=zerbarian@outlook.com

#PHP 7.3
RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y update
RUN apt-get install -y nginx php7.3-cli php7.3-fpm php7.3-bcmath php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-sqlite3 php7.3-xml php7.3-zip

COPY scripts/web-start.sh /
CMD ["./web-start.sh"]