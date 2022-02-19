default: up

up:
	@echo "Start containers"
	@docker-compose up -d

down:
	@echo "Stop containers"
	@docker-commpose down

prepare:
	@echo "Prepare authentication user"
	@docker exec -ti registry ash -c "htpasswd -Bbn user_name p4ssw0rd > /var/lib/registry/passfile"
