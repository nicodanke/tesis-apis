#!/bin/bash

declare dcInfra=docker-compose.yml
declare dcApp=docker-compose-app.yml

function buildApi() {
    mvn clean compile jib:dockerBuild
}

function buildAndPublishApi() {
    mvn clean compile jib:build
}

function startInfra() {
    echo "Starting infra docker containers...."
    docker-compose -f ${dcInfra} up -d
    docker-compose -f ${dcInfra} logs -f
}

function stopInfra() {
    echo "Stopping infra docker containers...."
    docker-compose -f ${dcInfra} down
}

function start() {
  echo "Starting all docker containers...."
  docker-compose -f ${dcInfra} -f ${dcApp} up --build -d
  docker-compose -f ${dcInfra} -f ${dcApp} logs -f
}

function stop() {
  echo "Stopping all docker containers...."
  docker-compose -f ${dcInfra} -f ${dcApp} down
}

function restart() {
    stop
    sleep 3
    start
}

action="start"

if [[ "$#" != "0" ]]
then
  action=$@
fi

validParams=("start" "stop" "restart" "startInfra" "stopInfra" "buildApi" "buildAndPublishApi")
if [[ "${validParams[@]/$action/}" != "${validParams[@]}" ]]; then
  eval ${action}
else
  echo "$action param not allowed."
  exit 1
fi