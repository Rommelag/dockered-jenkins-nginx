FROM nginx
ARG PUBLIC_HOSTNAME
ENV PUBLIC_HOSTNAME=$PUBLIC_HOSTNAME
#temporary key/cert so that nginx doesn't abort on first boot
ADD server.key /etc/letsencrypt/live/$PUBLIC_HOSTNAME/privkey.pem
ADD server.crt /etc/letsencrypt/live/$PUBLIC_HOSTNAME/fullchain.pem
RUN touch /etc/letsencrypt/live/$PUBLIC_HOSTNAME/FAKECERTS
ADD jenkins.template /etc/nginx/conf.d/
RUN envsubst '$PUBLIC_HOSTNAME' < /etc/nginx/conf.d/jenkins.template > /etc/nginx/conf.d/jenkins.conf; rm /etc/nginx/conf.d/jenkins.template
