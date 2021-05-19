#!/bin/bash
#deploy_local.sh

mkdir -p /app
cp helloWorld.class /app
cd /app
java helloWorld
