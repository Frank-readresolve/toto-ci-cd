#!/bin/bash

set -e

readonly SCRIPT=$0
readonly TOTO_PRESENTATION_DEPLOY_DIR=$1
readonly TOTO_PRESENTATION_URL=$2

echo " > Executing: ${SCRIPT}"

echo " > Deploy dist/* to ${TOTO_PRESENTATION_DEPLOY_DIR}"
rm -r $TOTO_PRESENTATION_DEPLOY_DIR/*
cp -r ./toto-presentation/dist/* $TOTO_PRESENTATION_DEPLOY_DIR

echo " > Deployed! Have a look, enjoy your job:"
echo $TOTO_PRESENTATION_URL
