FROM dock0/arch:f4c0d1f00e86
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80

RUN pacman -Syu --noconfirm nginx

RUN mkdir -p /etc/nginx/sites
ADD nginx.conf /etc/nginx/nginx.conf
ADD run /etc/sv/nginx/run
RUN ln -s /etc/sv/nginx /service/
