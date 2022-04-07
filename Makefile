USER=oronda
MYSQLUSER=mysql
WORDPRESS_USER=www-data
DATAPATH=/home/${USER}/data

# Colors variables
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
RESET = \033[0m

up:
	@sudo docker-compose -f ./srcs/docker-compose.yml up --build

create :
	@echo "Datapath = /home/${USER}/data";
#	@echo "Searching for user ${MYSQLUSER} ...";
#	@if [ "id -u ${MYSQLUSER}" ]; then \
#		echo "user ${MYSQLUSER} exist, deleting user ${MYSQLUSER}"; \
#		sudo userdel ${MYSQLUSER}; fi 
#	 
#	@echo "Recreating user ${MYSQLUSER} with id=999 ..."; 
#	@sudo useradd -u 999 ${MYSQLUSER}; #

#	@echo "Searching for user ${WORDPRESS_USER} ...";
#	@if [ "id -u ${WORDPRESS_USER}" ]; then \
#		echo "user ${WORDPRESS_USER} exist, deleting user ${WORDPRESS_USER}"; \
#		sudo userdel ${WORDPRESS_USER}; fi 
#	 
#	@echo "Recreating user ${WORDPRESS_USER} with id=82 ..."; 
#	@sudo useradd -u 82 ${WORDPRESS_USER}; 
#	@echo "Searching for mysql and html dir in datapath ...";

	@if [ -d "${DATAPATH}/mysql" ]; then \
		echo "$(GREEN)████████████████████ MYSQL Data exist █████████████████████$(RESET)";\
		echo "mysql dir exists"; \
	else \
		echo "$(YELLOW)████████████████████ Creating Data Dir MYSQL█████████████████████$(RESET)";\
		echo "dir mysql not exist, creating dir"; \
		mkdir -p ${DATAPATH}/mysql; \
	fi \

	@if [ -d "${DATAPATH}/html" ]; then \
		echo "$(GREEN)████████████████████ Worpress data exist █████████████████████$(RESET)";\
		echo "html dir exists"; \
	else \
		echo "$(YELLOW)████████████████████ Creating Data Dir HTML█████████████████████$(RESET)";\
		echo "dir html not exist, creating dir"; \
		mkdir -p ${DATAPATH}/html; \
	fi \

	@echo "Set dirs owners ..."; 
	@sudo chown -R mysql:mysql ${DATAPATH}/mysql; 
	@sudo chown -R oronda:oronda ${DATAPATH}/html; 

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: 	
	@docker stop $$(docker ps -qa) || true; 
	docker rm $$(docker ps -qa) || true; \
	docker rmi -f $$(docker images -qa) || true; \
	docker volume rm $$(docker volume ls -q) || true; \
	docker network rm $$(docker network ls -q) || true; 


delete:
#	@if [ -d "${DATAPATH}" ]; then \
		echo "$(RED)████████████████████ Deleting LocalData █████████████████████$(RESET)";\
		sudo rm -rf ${DATAPATH}; \
	fi \

re: clean up

deleteall: delete clean

.PHONY: all re down clean
