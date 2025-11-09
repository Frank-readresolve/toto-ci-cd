#!/bin/bash
set -e

readonly ENV_FILE_PATH=$1

echo " > Copy tmp env file to ./toto-business/src/main/resources/application-prod.properties"
cp $ENV_FILE_PATH ./toto-business/src/main/resources/application-prod.properties

echo " > Generate artifacts with maven:"
mvn -v
mvn -Dmaven.test.skip=true -f ./toto-business/pom.xml package
