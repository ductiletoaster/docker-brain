@echo OFF

set bin=%~dp0

pushd "%bin%..\"
docker-compose run --rm --no-deps dev-php-7.0 %*
popd 

@echo ON