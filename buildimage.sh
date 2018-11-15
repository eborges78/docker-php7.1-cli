#!/bin/bash

docker rmi --force eborges/php7.1-cli:latest
docker build -t eborges/php7.1-cli .
