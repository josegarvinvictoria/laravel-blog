# Define una variable que contenga todos los argumentos pasados a `make`
args = $(filter-out $@,$(MAKECMDGOALS))

# Define una regla que no haga nada por sí misma para los argumentos pasados
%:
	@:

artisan:
	docker-compose run --rm artisan $(args)

npm:
	docker-compose run --rm npm $(args)

du:
	docker-compose up -d

dd:
	docker-compose down

db:
	docker-compose up -d --build

artisan-tinker:
	docker-compose run --rm artisan tinker

composer:
	docker-compose run --rm composer

migrate:
	docker-compose run --rm artisan migrate

npm-dev:
	docker-compose run --rm --service-ports npm run dev

logs:
	docker-compose logs -f

# Start artisan serve
artisan-serve:
	docker-compose run --rm artisan serve
