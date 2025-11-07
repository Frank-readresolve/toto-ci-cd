#!/bin/bash

readonly SCRIPT=$0
readonly TOTO_BUSINESS_DEPLOY_DIR=$1
readonly TOTO_BUSINESS_URL=$2
readonly TOTO_BUSINESS_PORT=$3

echo " > Executing: ${SCRIPT}"

echo " > Stopping toto-business (optional operation):"

# Check if a process exists on port:
lsof -ti tcp:$TOTO_BUSINESS_PORT
readonly LSOF_EXIT_CODE=$?

# Flag to stop script execution:
set -e

if [ $LSOF_EXIT_CODE -eq 0 ]; then
    # Get the PID (Process IDentifier)
    readonly PID=$(lsof -ti tcp:$TOTO_BUSINESS_PORT)
    echo "Killing gracefully the process with PID=${PID}..."
    kill -15 $PID
    echo " > Process killed"
else
    echo " > No process running"
fi

echo " > Deploy target/*.jar to ${TOTO_BUSINESS_DEPLOY_DIR}"
rm -rf $TOTO_BUSINESS_DEPLOY_DIR/*
cp ./toto-business/target/*.jar $TOTO_BUSINESS_DEPLOY_DIR/toto-business.jar

# nohup: no hang up
BUILD_ID=dontKillMe nohup java -jar -Dspring.profiles.active=prod $TOTO_BUSINESS_DEPLOY_DIR/toto-business.jar &

echo " > Deployed! Have a look, enjoy your job:"
echo $TOTO_BUSINESS_URL
