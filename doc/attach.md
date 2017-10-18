# Attach to the console of your Oz ether node

Your Oz ether node is running inside of a docker container.   
To connect to it you need to know the Container ID or Name:

`$ docker ps`

Note the CONTAINER ID, or NAME and use it in this command :

`$ docker attach NAME`

Press enter twice and you should see the Geth console prompt :

`>`

##### Next : [Useful "geth" commands (creating accounts, mining, transfering ether)](geth-commands.md)

*Note that when you `exit` the geth console it will stop your container, and you will need to restart your node with `./run.sh` again.*

If you want to stop your container without connecting to it you can use :

`$ docker kill NAME`