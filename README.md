## Features
Simple docker-compose setup that provides:
* Latest Jenkins 2.0 (blueocean)
* nginx TLS reverse proxy
* Let's Encrypt cert generation and renewal

## Usage
```
cp template.env.template .env
vim .env 
docker-compose up --build -d
```

## Things that don't work:
* Nginx doesn't auto-reload on cert change, requires manual restart
* Nginx / certbot race condition on initial cert creation might cause nginx startup to fail

## Alternatives
You might also want to look at:
* https://github.com/maxfields2000/dockerjenkins_tutorial/tree/master/jenkins2
* https://github.com/jonbrouse/docker-jenkins
* https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion
* https://github.com/bringnow/docker-letsencrypt-manager
