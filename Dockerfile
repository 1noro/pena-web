FROM nginx AS base

FROM base AS dev
COPY ./config/nginx/site-dev.conf /etc/nginx/conf.d/site.conf

FROM base AS pro
COPY ./config/nginx/site-pro.conf /etc/nginx/conf.d/site.conf
COPY ./public /public
