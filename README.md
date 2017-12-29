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
This container is an attempt to dockerize git so that we can standardize the usage of git accross multiple systems.

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

### Usage
To use this container do the following:
```
docker-compose run --rm --no-deps dev-git [absolute path to repo] [git parms]
```

- or -

For convenience I created a simple windows patch script that acts as a wrapper for the above command and automatically takes the absolute path at execution and converts it to what docker/linux would expect.

**Example**
We can execute this wrapper like so...
```
PS> .\bin\git.cmd status
```
For convenience we can also add this to our PATH and then we can simply do `git status`!

## General Tasks
- Move awscli and jq to dev-box
- Make dev-docker a service for dev-box to call
- Look into smaller containers for php, node, etc