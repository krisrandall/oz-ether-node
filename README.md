# Oz Ethereum Node

Join the Oz Ethereum Network    
by setting up your own node on the network

## Prerequisites

* shell script (use gitbash Windows)
* docker ([ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04), [mac](https://docs.docker.com/docker-for-mac/install/), [windows](https://docs.docker.com/toolbox/toolbox_install_windows/))

## Quick Setup

`$ ./setup.sh`  # and now you have an initilised node    
`$ ./run.sh`  # this will begin to sync your node to the network


### Trouble Shooting 

* "... is not shared from OS X and is not known to Docker."   
  *Ensure your current path does not contain a symbolic link*

* "... is not shared from OS X and is not known to Docker."   
  *Your Docker > Preferences > File Sharing must include your current path*.  

## More Information

* [How to attach to the console of your Oz ether node](doc/attach.md)
* [Useful "geth" commands (creating accounts, mining, transfering ether)](doc/geth-commands.md)
* [Connecting to the Oz Ethereum Network without creating your own node](doc/oz-eth-metamask.md)
* [Geth (aka go-ethereum) repository (much good technical info)](https://github.com/ethereum/go-ethereum)


---

... TODO : add link to Oz Ethereum Enterprise Sandbox OEES website once it exists ...
