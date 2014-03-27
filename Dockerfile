FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80

RUN pacman -S --noconfirm nginx

RUN mkdir -p /etc/nginx/sites
ADD nginx.conf /etc/nginx/nginx.conf
ADD run /etc/sv/nginx/run
RUN ln -s /etc/sv/nginx /service/
