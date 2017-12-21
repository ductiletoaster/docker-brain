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
docker-compose run dev-git [git parms]
```
#TODO: Need the below to use .env
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
#TODO: Need to use more secure method for whitelisting hosts for git/ssh
```
ssh-keyscan <host> >> ~/.ssh/known_hosts
```

### General Tasks
#TODO: Move awscli and jq to dev-box
#TODO: Make dev-docker a service for dev-box to call
#TODO: Look into smaller containers for php, node, etc
#TODO: Add config to load ssh keys for dev-git