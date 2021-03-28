DOCKER_COMPOSE=docker-compose -f docker-compose.yml

.PHONY: build-spring
build-spring:
	cd ./spring && ./gradlew build

.PHONY: run-spring
run-spring:
	${DOCKER_COMPOSE} up --build -d spring

