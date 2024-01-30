#!/bin/bash

docker run -dp $1:5432 -e POSTGRES_PASSWORD=postgres postgres
