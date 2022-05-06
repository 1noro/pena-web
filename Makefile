include .env
export

all: help

help:
	@echo "Usage: make [ target ]"
	@echo "target:"
	@echo "	help"
	@echo "	up"
	@echo "	down"
	@echo "	logs"
	@echo "	setup"
	@echo "	reset-volumes"
	@echo "	ps"
	@echo "	mysql-connect"
	@echo "	mysql-initialize"

up:
	@DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up -d --build

down:
	@docker-compose down

logs:
	@docker-compose logs -f $(S)

setup:
	@docker network create pena-net
	@docker volume create pena-db

reset-volumes:
	@docker volume rm pena-db
	@docker volume create pena-db

ps:
	@watch -n 1 docker ps

mysql-connect:
	@docker run -it --rm --network pena-net mysql mysql -h 'mysql' -u 'root' -p"$(MYSQL_ROOT_PASSWORD)"

mysql-initialize:
	@/bin/bash scripts/mysql-initialize.sh $(MYSQL_ROOT_PASSWORD)
