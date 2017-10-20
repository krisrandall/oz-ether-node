#!/bin/bash

PWD=$(pwd)

NETWORK_PORT=30123

BOOT_SERVER_IP=104.131.122.94
BOOT_RPC_PORT=8555

# obtain enode (public key) of bootnode
BOOT_ENODE=$(curl -sX POST --data '{"jsonrpc":"2.0","method":"admin_nodeInfo", "id":1}' http://${BOOT_SERVER_IP}:${BOOT_RPC_PORT})
BOOT_ENODE=$(expr "${BOOT_ENODE}" : '.*"id":"\([^"]*\)"') 
BOOT_ENODE=enode://${BOOT_ENODE}@[${BOOT_SERVER_IP}]:${NETWORK_PORT}

docker run -it -d -v ${PWD}/blockchain_node:/root \
     -p ${BOOT_RPC_PORT}:${BOOT_RPC_PORT} -p ${NETWORK_PORT}:${NETWORK_PORT}  \
     ethereum/client-go --port ${NETWORK_PORT} --networkid 4552 --rpc --rpcport ${BOOT_RPC_PORT} \
     --datadir /root --verbosity 3 --rpcaddr 0.0.0.0 \
     --rpcapi eth,net,web3,personal,admin \
     --bootnodes ${BOOT_ENODE} \
     console
