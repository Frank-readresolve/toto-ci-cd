#!/bin/bash
set -e

readonly ENV_FILE_PATH=$1
readonly SKIP_TEST=$2

echo " > Copy tmp env file to ./toto-business/src/main/resources/application-prod.properties"
cp $ENV_FILE_PATH ./toto-business/src/main/resources/application-prod.properties

echo " > Execute goals (skip_test=${SKIP_TEST}) with maven:"
mvn -v
mvn -Dmaven.test.skip=$SKIP_TEST -Dtest=* -f ./toto-business/pom.xml package
