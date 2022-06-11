#!/bin/bash
set -e
echo "> loading: $1"
mysql -h pena-mysql -u root -p"$MYSQL_ROOT_PASSWORD" < "$1"
