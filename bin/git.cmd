@echo off
@echo %*>> %~dp0/logs/git.log
docker run dev-git %*