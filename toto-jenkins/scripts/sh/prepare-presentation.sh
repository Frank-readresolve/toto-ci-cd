#!/bin/bash
set -e

readonly ENV_FILE_PATH=$1

echo " > Prepare presentation artifacts with node and npm"

node -v
npm -v

echo " > Generate artifacts with npm"

npm --prefix ./toto-presentation/ install

echo " > Copy tmp env file to ./toto-presentation/.env.production"
cp $ENV_FILE_PATH ./toto-presentation/.env.production

npm --prefix ./toto-presentation/ run build
