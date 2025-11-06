#!/bin/bash

set -e

readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1

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
