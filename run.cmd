@echo off
REM Helper: build the docker image and run with docker-compose
IF "%1"=="" (
  echo Using default PORT=5000
) ELSE (
  set PORT=%1
  echo Using PORT=%PORT%
)
set PORT=%PORT% 

docker-compose up --build
