# docker-brain
The brain center for all my development in docker

### Dev Box
To enter the ubuntu dev box make sure to customize the workspace in .env and then enter using:
```
docker exec -it dev-box zsh
```

### Dev Docker
To enter the docker development container use the following:
```
docker exec -it dev-docker bash
```
Why do we need this? By having a container we can launch other docker containers from we also gain access to a full linux shell. If we aren't using WSL on windows this can come in handy. 


### Dev Git
To use this container do the following:
```
docker run dev-git
```
#TODO: Document bin files for phpstorm 

### Tasks
#TODO: Move awscli and jq to dev-box
#TODO: Make dev-docker a service for dev-box to call
#TODO: Look into smaller containers for php, node, etc
#TODO: Add config to load ssh keys for dev-git