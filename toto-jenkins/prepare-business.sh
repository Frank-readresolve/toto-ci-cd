#!/bin/bash

set -e

readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1

echo " > Executing: ${SCRIPT}"

echo " > Preparing business artifacts with maven and java:"

mvn -v
