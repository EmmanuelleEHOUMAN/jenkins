#!/bin/bash
#deploy_local.sh

mkdir -p /app
cp HelloWorld.class /app
cd /app
java HelloWorld
