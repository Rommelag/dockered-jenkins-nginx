#!/bin/sh
set -e

if [ -e /etc/letsencrypt/live/$PUBLIC_HOSTNAME/FAKECERTS ] ; then
    sleep 2
    rm -r /etc/letsencrypt/live/$PUBLIC_HOSTNAME/
fi

while :;do
    certbot certonly --webroot -n -w /usr/share/nginx/html -d $PUBLIC_HOSTNAME -m $EMAIL_ADDRESS --agree-tos
    sleep $((60*60*12))
done
