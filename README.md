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
#TODO: Make it work for the current active directory not whatever is set in config... might do this with the .cmd passing it in to docker instance
#TODO: https://stackoverflow.com/questions/41485217/mount-current-directory-as-volume-in-docker-on-windows-10
# Might need to mount entire C drive and then translate local execution path to absolute?
#TODO: https://superuser.com/questions/1113385/convert-windows-path-for-windows-ubuntu-bash

# Use test script to map directories
# use entry point to pass directory path and arguments passed form CMD


### Tasks
#TODO: Move awscli and jq to dev-box
#TODO: Make dev-docker a service for dev-box to call
#TODO: Look into smaller containers for php, node, etc
#TODO: Add config to load ssh keys for dev-git