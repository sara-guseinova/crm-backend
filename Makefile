start:
	uvicorn tgbot:app --workers 1 --host ${APP_HOST} --port ${APP_PORT} --reload --reload-dir . --log-config=logger.ini

up:
	docker-compose up

dev:
	docker-compose -f docker-compose.dev.yml up --env-file .env.dev

build:
	docker-compose stop && \
	sudo rm -rf pgdata/ && \
	docker-compose -f docker-compose.dev.yml up --env-file .env.dev --build
