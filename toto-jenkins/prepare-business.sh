#!/bin/bash

set -e

readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1

echo " > Executing: ${SCRIPT}"

echo " > Preparing business artifacts with maven and java:"

# application-prod.properties
echo " > Copy tmp env file to ./toto-business/src/main/resources/application-prod.properties"
cp $ENV_FILE_PATH ./toto-business/src/main/resources/application-prod.properties

mvn -v

echo " > Generate artifacts with maven:"
mvn -Dmaven.test.skip=true -f ./toto-business/pom.xml package

