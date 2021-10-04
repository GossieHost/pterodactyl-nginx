#!/bin/ash

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/usr/sbin/nginx -c /home/container/nginx/nginx.conf


docmd() {

    read -p "user@WebHost:~ " CMD

    eval "$CMD"

    echo "user@WebHost:~ "

    docmd2
    

}



docmd2() {

    read -p "user@WebHost:~ " CMD2

    eval "$CMD2"

    echo "user@WebHost:~ "

    docmd
    

}

echo "user@WebHost:~ "
docmd
