
docker kill oz-ether-node-inst
docker rm oz-ether-node-inst

open http://localhost:8000

sudo docker run -p 9000:9000 --name oz-ether-node-inst -t -i oz-ether-node 



