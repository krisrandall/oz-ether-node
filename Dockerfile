
FROM ubuntu 

WORKDIR /app

ADD ./setup /app

RUN ./install-ethernode.sh 


EXPOSE 9000
EXPOSE 30609


CMD geth --datadir /app/my_node --port 30609 --networkid 4552 --rpc --rpcport="9000" --rpccorsdomain="*" --rpcaddr="0.0.0.0"  console


