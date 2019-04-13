FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80
RUN pacman -S --noconfirm nginx
RUN mkdir -p /etc/nginx/sites
ADD nginx.conf /etc/nginx/nginx.conf
ADD run /service/nginx/run
