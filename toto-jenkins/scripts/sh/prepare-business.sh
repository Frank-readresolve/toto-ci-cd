#!/bin/bash
set -e

#readonly INT_TEST=$1
readonly ENV_FILE_PATH=$1
readonly TEST_ENV_FILE_PATH=$2

echo "#############"
#echo "INT_TEST=${INT_TEST}"
echo "TEST_ENV_FILE_PATH=${TEST_ENV_FILE_PATH}"
echo "#############"

echo " > Copy tmp env file to ./toto-business/src/main/resources/application-prod.properties"
cp $ENV_FILE_PATH ./toto-business/src/main/resources/application-prod.properties

echo " > Execute goals with maven:"
mvn -v
mvn -Dmaven.test.skip=true -f ./toto-business/pom.xml package
