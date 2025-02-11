# Build the project
build:
	docker-compose build
down:
	docker-compose down
migrate:
	docker-compose run django python app/manage.py migrate
setup:
	make migrate
	make update_elasticsearch_index
# SSH into the django container
ssh:
	docker exec -it iogt-dg01 /bin/bash
up:
	docker-compose up
update_elasticsearch_index:
	docker-compose run django python app/manage.py update_index
