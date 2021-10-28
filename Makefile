.PHONY: start
start:
	docker-compose up -d

.PHONY: stop
stop:
	docker-compose stop

.PHONY: update
update:
	docker-compose exec mysql sh /home/update_script.sh

.PHONY: install
install:
	docker-compose exec mysql apt-get -y update && docker-compose exec mysql apt-get -y install wget unzip

.PHONY: rm-containers
rm-containers:
	docker-compose -f docker-compose.yml rm -f

.PHONY: rm
rm: stop rm-containers