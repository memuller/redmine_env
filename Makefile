PRJ_NAME:=redmine_dev
.PHONY: all

run:
	docker-compose up ;

clean:
	docker-compose down --remove-orphans ;
	docker-compose rm ;

