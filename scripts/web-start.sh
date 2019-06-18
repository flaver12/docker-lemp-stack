#!/bin/sh
exec nginx -g 'daemon off;'
exec service nginx start
exec service php7.3-fpm start