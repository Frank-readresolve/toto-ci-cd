#!/bin/bash
set -e

readonly DEPLOY_DIR=$1
readonly PRESENTATION_URL=$2

echo " > Deploy dist/* to ${DEPLOY_DIR}"
rm -rf $DEPLOY_DIR/*
cp -r ./toto-presentation/dist/* $DEPLOY_DIR

echo " > Deployed! Have a look, enjoy your work: ${PRESENTATION_URL}"
