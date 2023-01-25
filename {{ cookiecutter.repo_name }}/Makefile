clean:
# @rm -r spaceflights
	cd ./docker && docker compose down
	@-docker rmi docker-kedro
	@rm -r spaceflights


test:
	@cookiecutter git@bitbucket.org:daemonsolutions/daemn-kedro-template.git

docker: 
	@chmod +x ./check-docker-img.sh
	@./check-docker-img.sh
# cd ./spaceflights/docker && pwd && docker compose down && docker compose up
