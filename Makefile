USER=oronda
DATAPATH=/home/${USER}/data

all:
	@if [ -d "${DATAPATH}" ]; then \
		echo "Dir exists"; \
	else \
		echo "dataDir not exists, Creating dataDir ..."; \
		mkdir -p ${DATAPATH}/mysql; \
		mkdir -p ${DATAPATH}/www; \
	fi \
	#@docker-compose -f ./srcs/docker-compose.yml up 

down:
	@docker-compose -f ./srcs/docker-compose.yml down

re:
	@docker-compose -f srcs/docker-compose.yml up --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

.PHONY: all re down clean
