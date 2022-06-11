#!/bin/bash

set -e

MYSQL_ROOT_PASSWORD=$1

FILES="pena-mysql/scripts/semanas/*"
for f in $FILES; do
    filename=${f##*/}
    docker run --rm \
        --network pena-net \
        -v "$PWD/pena-mysql/scripts/semanas":/semanas \
        -v "$PWD/scripts":/scripts \
        -e MYSQL_ROOT_PASSWORD="$MYSQL_ROOT_PASSWORD" \
        mysql \
        bash /scripts/mysql-load-file.sh "/semanas/$filename"
done
