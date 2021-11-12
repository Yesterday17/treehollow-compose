#!/bin/bash

# Clean up
rm -rf ./nginx/webhole
git submodule update --init --recursive

# Build webhole
cd webhole
npm install
VERSION_NUMBER="v$(grep -oP '"version": "\K[^"]+' package.json | head -n1)"
REACT_APP_BUILD_INFO=$VERSION_NUMBER npm run build
cd ..
cp -r ./webhole/build ./docker/nginx/webhole

# build backend
cd treehollow-backend
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ../docker/build/ ./...
cd ..
mv ./docker/build/treehollow-v3-services-api ./docker/services/
mv ./docker/build/treehollow-v3-security-api ./docker/security/
mv ./docker/build/treehollow-v3-fallback ./docker/fallback/
