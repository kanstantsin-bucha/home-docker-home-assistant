COMPOSE = docker compose

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

reload:
	$(COMPOSE) restart homeassistant

logs:
	$(COMPOSE) logs -f homeassistant

ps:
	$(COMPOSE) ps

shell:
	docker exec -it homeassistant bash

.PHONY: up down reload logs ps shell
