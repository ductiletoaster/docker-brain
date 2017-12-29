# Docker Brain
The brain center for all my development in docker ( ^..^)

## Dev Box
To enter the ubuntu dev box make sure to customize the workspace in .env and then enter using:
```
docker exec -it dev-box zsh
```

## Dev Docker
To enter the docker development container use the following:
```
docker exec -it dev-docker bash
```
Why do we need this? By having a container we can launch other docker containers from we also gain access to a full linux shell. If we aren't using WSL on windows this can come in handy. 

## Dev Git
To use this container do the following:
```
docker-compose run dev-git [git parms]
```

### Setup
One issue with dockerizing GIT is that the `known_hosts` file doesn't persist and so the user is prompted with every remote call.To get around this we need follow the below steps.

First, in `dev-base->home` create a directory `.ssh` and create a file called `config`. (We can also add our ssh keys here!)

In this file put the following:
```
UserKnownHostsFile=~/share/known_hosts
```
This will allow the docker images to be created with the follow `/root/share` that can be used to persist the known hosts data. 

**Why not just mount these files as a volume?**
The reason we can't do this is because ssh expects our keys and config to have pretty restrictive permissions which the mounted volume wouldn't likely have.

## General Tasks
- Move awscli and jq to dev-box
- Make dev-docker a service for dev-box to call
- Look into smaller containers for php, node, etc