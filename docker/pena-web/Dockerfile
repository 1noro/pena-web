FROM nginx AS base

FROM base AS dev
COPY ./docker/pena-web/config/site-dev.conf /etc/nginx/conf.d/site.conf

FROM base AS pro
COPY ./docker/pena-web/config/site-pro.conf /etc/nginx/conf.d/site.conf
COPY ./public /public
