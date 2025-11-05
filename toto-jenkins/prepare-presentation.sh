#!/bin/bash

echo " > Preparing presentation artifacts with node and npm:"

node -v
npm -v

echo " > Generate artifacts with npm:"

# => toto-presentation/

npm --prefix ./toto-presentation/ install
npm --prefix ./toto-presentation/ run build
