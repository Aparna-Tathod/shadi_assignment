#!/bin/bash

export REDIS_HOST="127.0.0.1";
export REDIS_PORT="6379";
export REDIS_PASSWORD="";

export KAFKA_HOST="127.0.0.1";
export KAFKA_PORT="9092";
export KAFKA_TOPIC="number";
export KAFKA_CONSUMER_GROUP="numbers-group";

export HTTP_SERVER_PORT="8080";
export HTTP_SERVER_TIMEOUT="10000";

export GO111MODULE=on;

go mod download

go install ./...

http-server