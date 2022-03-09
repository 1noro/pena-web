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
