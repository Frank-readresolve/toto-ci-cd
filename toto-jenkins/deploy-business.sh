#!/bin/bash

set -e

readonly SCRIPT=$0
readonly TOTO_BUSINESS_DEPLOY_DIR=$1
readonly TOTO_BUSINESS_URL=$2

echo " > Executing: ${SCRIPT}"

echo " > Deploy target/*.jar to ${TOTO_BUSINESS_DEPLOY_DIR}"
rm -rf $TOTO_BUSINESS_DEPLOY_DIR/*
cp ./toto-business/target/*.jar $TOTO_BUSINESS_DEPLOY_DIR/toto-business.jar

echo " > Deployed! Have a look, enjoy your job:"
echo $TOTO_BUSINESS_URL
