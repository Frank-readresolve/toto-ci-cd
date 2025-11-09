#!/bin/bash
set -e

readonly PRESENTATION_DEPLOY_DIR=$1
readonly PRESENTATION_URL=$2

echo " > Deploy dist/* to ${PRESENTATION_DEPLOY_DIR}"
rm -rf $PRESENTATION_DEPLOY_DIR/*
cp -r ./toto-presentation/dist/* $PRESENTATION_DEPLOY_DIR

echo " > Deployed! Have a look, enjoy your work: ${PRESENTATION_URL}"
