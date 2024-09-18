#!/bin/sh

mkdir -p tmp
cp ~/.ssh/id_ed25519.pub ./tmp/id_ed25519.pub

docker build -t ansible-host .