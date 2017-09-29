
FROM ubuntu 

WORKDIR /app

ADD ./setup /app

RUN ./install-ethernode.sh 


EXPOSE 9000


CMD geth --datadir /app/my_node --port 30609 --networkid 4552 --rpc --rpcport 9000 console


