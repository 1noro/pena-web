#!/bin/bash
set -e
echo "> loading: $1"
mysql -h mysql -u root -p"$MYSQL_ROOT_PASSWORD" < "$1"
