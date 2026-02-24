ARG VERSION=stable

FROM nginx:${VERSION}

ENV NGINX_LISTEN_ADDRESS=80
ENV NGINX_SERVER_MODE=spa

COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY 40-nginx-server-mode.sh /docker-entrypoint.d/