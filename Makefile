SERVER_NAME := iany/server_2.0
WORK_DIR = /home/app

.PHONY: docker_build docker_run

docker_build:
	docker build -t $(SERVER_NAME) .

docker_run:
	docker run --rm -it --privileged -v "$$PWD:/home/app" $(SERVER_NAME):latest bash