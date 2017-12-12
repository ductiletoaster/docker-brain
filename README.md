# docker-brain
The brain center for all my development in docker

#TODO: Setup Node
#TODO: Add pip and awscli
#TODO: create config for aws cli
#TODO: install docker-ce so we can spin up other docker containers -- Need to install CLI in main and connect to other container
	# We could probably then get rid of of the mount volumne in it
# https://forums.docker.com/t/how-can-i-run-docker-command-inside-a-docker-container/337/6
#TODO: Look into smaller containers for php, node, etc
#TODO: add config to load ssh keys
#TODO: create .cmd or .ps1 files to make executing docker cmds easier
#Fix: can't run docker-compose on services


### Dev Box
To enter the ubuntu dev box make sure to customize the workspace in .env and then enter using:
```
docker exec -it dev-box zsh
```

### Dev Docker
To enter the docker development container use the following:
```
docker exec -it dev-docker sh
```