#!/bin/bash

PWD = $(pwd)

mkdir ./blockchain_node
cp ./genesis.json ./blockchain_node

docker pull ethereum/client-go

docker run -d -v $PWD/blockchain_node:/root ethereum/client-go --datadir /root init /root/genesis.json

