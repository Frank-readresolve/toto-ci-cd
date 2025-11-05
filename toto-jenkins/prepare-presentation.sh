#!/bin/bash

readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1
readonly TOTO_PRESENTATION_DEPLOY_DIR=$2

echo " > Executing: ${SCRIPT}"

echo " > Preparing presentation artifacts with node and npm:"

node -v
npm -v

echo " > Generate artifacts with npm:"

# => toto-presentation/

npm --prefix ./toto-presentation/ install

# .env.production
echo " > Copy tmp env file to ./toto-presentation/.env.production"
cp $ENV_FILE_PATH ./toto-presentation/.env.production

npm --prefix ./toto-presentation/ run build

echo " > Deploy dist/* to ${TOTO_PRESENTATION_DEPLOY_DIR}"
rm -r $TOTO_PRESENTATION_DEPLOY_DIR/*
cp -r ./toto-presentation/dist/* $TOTO_PRESENTATION_DEPLOY_DIR
