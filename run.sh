
docker kill oz-ether-node-inst
docker rm oz-ether-node-inst

sudo docker run -p 9000:9000 --name oz-ether-node-inst -t -i oz-ether-node 



