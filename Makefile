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


up: export compose_file := docker-compose-$(ENV).yml
up: __up

up-dev: export compose_file := docker-compose-dev.yml
up-dev: __up

up-pro: export compose_file := docker-compose-pro.yml
up-pro: __up

__up:
	@DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1 docker-compose -f "$(compose_file)" up -d --build


down: export compose_file := docker-compose-$(ENV).yml
down: __down

down-dev: export compose_file := docker-compose-dev.yml
down-dev: __down

down-pro: export compose_file := docker-compose-pro.yml
down-pro: __down

__down:
	@docker-compose -f "$(compose_file)" down


logs: export compose_file := docker-compose-$(ENV).yml
logs: __logs

logs-dev: export compose_file := docker-compose-dev.yml
logs-dev: __logs

logs-pro: export compose_file := docker-compose-pro.yml
logs-pro: __logs

__logs:
	@docker-compose -f "$(compose_file)" logs -f $(S)


bash: export compose_file := docker-compose-$(ENV).yml
bash: __bash

bash-dev: export compose_file := docker-compose-dev.yml
bash-dev: __bash

bash-pro: export compose_file := docker-compose-pro.yml
bash-pro: __bash

__bash:
	@docker-compose -f "$(compose_file)" exec $(S) bash


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
