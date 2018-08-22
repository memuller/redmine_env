PRJ_NAME:=redmine_dev
EXEC_REDMINE:=docker exec -it -w /usr/src/redmine ${PRJ_NAME}_redmine_1 
EXEC_POSTGRES:=docker exec -it -u postgres ${PRJ_NAME}_db_1 

.PHONY: all

run:
	docker-compose up ;
up:
	docker-compose up --detach;
down:
	docker-compose stop;

clean:
	docker-compose down --remove-orphans ;
	docker-compose rm ;

ssh:
	${EXEC_REDMINE} bash ;

psql:
	${EXEC_POSTGRES} psql ;