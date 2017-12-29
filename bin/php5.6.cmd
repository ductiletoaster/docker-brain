@echo OFF

set bin=%~dp0

pushd "%bin%..\"
docker-compose run --rm --no-deps dev-php-5.6 %*
popd 

@echo ON