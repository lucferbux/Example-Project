DOCKER_COMPOSE=docker-compose -f docker-compose.yml
CI_DOCKER_COMPOSE=docker-compose -f docker-compose-ci.yml

.PHONY: build-spring
build-spring:
	cd ./spring && ./gradlew build

.PHONY: run-spring
run-spring:
	${DOCKER_COMPOSE} up --build -d spring

