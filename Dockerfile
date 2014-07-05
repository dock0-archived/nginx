FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80
RUN pacman -Syu --noconfirm nginx
RUN mkdir -p /etc/nginx/sites
ADD nginx.conf /etc/nginx/nginx.conf
ADD run /service/nginx/run
