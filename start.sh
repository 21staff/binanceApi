#!/bin/bash

docker pull swaggerapi/swagger-ui

docker run \
    -p 8079:8080 \
    -e SWAGGER_JSON=/app/api.yaml \
    -v $PWD:/app \
    swaggerapi/swagger-ui:latest