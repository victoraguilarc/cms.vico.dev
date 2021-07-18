
COMPOSE := docker-compose -f docker-compose.dev.yml

clean:
	@echo "Cleaning containers ..."
	docker ps -aq | xargs docker stop
	docker ps -aq | xargs docker rm

build:
	$(COMPOSE) build
	@echo "Building..."

up:
	@echo "Server up..."
	$(COMPOSE) up

bash:
	$(COMPOSE) run --rm ghost bash

