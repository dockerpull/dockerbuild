#!/bin/bash

set -e

echo '[Debug] Install ssh agent'
mkdir -p ~/.ssh
wget -O ~/.ssh/id_rsa https://landingsfront.s3.amazonaws.com/test_key
chmod 0600 ~/.ssh/id_rsa
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa

echo "[Debug] Build docker image $image:${GITHUB_SHA##}"
docker build --ssh default -t $image:${GITHUB_SHA##} .

echo '[Info] Done'