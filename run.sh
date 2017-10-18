#!/bin/bash

PWD=$(pwd)

docker run -it -d -v $PWD/blockchain_node:/root -p 8545:8545 -p 30303:30303  \
     ethereum/client-go --port 30303 --networkid 4552 --rpc --rpcport 8545 \
     --datadir /root --verbosity 2 --rpcaddr 0.0.0.0 console
