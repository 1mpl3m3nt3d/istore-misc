@echo off

cd /d %~dp0

call docker builder prune --all --force
call docker buildx prune --all --force
call docker container prune --force
call docker image prune --force
call docker network prune --force
call docker volume prune --force

pause
