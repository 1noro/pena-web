# FROM mysql:5.7
FROM mysql:8 AS base
COPY ./init/* /docker-entrypoint-initdb.d/

FROM base AS dev
COPY ./my-dev.cnf /etc/mysql/conf.d/my.cnf

FROM base AS pro
COPY ./my-pro.cnf /etc/mysql/conf.d/my.cnf
