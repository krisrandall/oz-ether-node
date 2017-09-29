
# Install Ethereum

apt-get update
apt-get install software-properties-common python-software-properties -y
add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get install ethereum -y 


# Create Node

mkdir my_node
geth --datadir /app/my_node init /app/genesis.json

# Command to run the geth node :
# geth --datadir ~/my_node --port 30609 --networkid 4552 console

