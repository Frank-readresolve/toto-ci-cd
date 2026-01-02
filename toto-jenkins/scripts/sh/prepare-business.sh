#!/bin/bash
set -e

readonly ENV_FILE_PATH=$1
readonly SKIP_TEST=$2
readonly TEST_ENV_FILE_PATH=$3

echo " > Copy tmp env file to ./toto-business/src/main/resources/application-prod.properties"
cp $ENV_FILE_PATH ./toto-business/src/main/resources/application-prod.properties

echo " > Copy tmp test env file to ./toto-business/src/test/resources/application-test.properties"
cp $TEST_ENV_FILE_PATH ./toto-business/src/test/resources/application-test.properties

echo " > Execute goals (skip_test=${SKIP_TEST}) with maven:"
mvn -v
mvn -Dmaven.test.skip=$SKIP_TEST -f ./toto-business/pom.xml package
