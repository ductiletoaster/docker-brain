@echo off
@echo %*>> %~dp0/logs/git.log
docker run --rm -v ${PWD}:/mnt/workspace dev-git %*