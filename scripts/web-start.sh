#!/bin/sh
exec service php7.3-fpm start
exec nginx -g 'daemon off;'
exec service nginx start