#!/bin/bash

readonly BUSINESS_DEPLOY_DIR=$1
readonly BUSINESS_URL=$2
readonly BUSINESS_PORT=$3

echo " > Stop toto-business (optional operation)"

# Check if a process exists on port:
lsof -ti tcp:$BUSINESS_PORT
readonly LSOF_EXIT_CODE=$?

# Flag to stop script execution:
set -e

if [ $LSOF_EXIT_CODE -eq 0 ]; then
    # Get the PID (Process IDentifier)
    readonly PID=$(lsof -ti tcp:$BUSINESS_PORT)
    echo " > Kill gracefully process with PID=${PID}..."
    kill -15 $PID
    echo " > Process killed"
else
    echo " > No process running"
fi

echo " > Deploy target/*.jar to ${BUSINESS_DEPLOY_DIR}"
rm -rf $BUSINESS_DEPLOY_DIR/*
cp ./toto-business/target/*.jar $BUSINESS_DEPLOY_DIR/toto-business.jar

# nohup: no hang up
JENKINS_NODE_COOKIE=dontKillMe nohup java -jar -Dspring.profiles.active=prod $BUSINESS_DEPLOY_DIR/toto-business.jar &

echo " > Deployed! Have a look, enjoy your work: ${BUSINESS_URL}"
