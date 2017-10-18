# Useful geth commands

### Node info

```
> admin.nodeInfo
```

### Peers

Show peers

```
> admin.peers
```

How many peers ?

```
> admin.peers.length
```

### Create an account

You need an account to do be able to do things like mining

```
> personal.newAccount()
```

*And make sure your remember/save the password!*

### Unlock account

Neccessary before some actions

```
> personal.unlockAccount( eth.accounts[0] )
```

### Start mining

```
> miner.start(1)
```

The first block may take a while to mine, allow a few minutes

### Stop mining

```
> miner.stop() 
```

### Current block number

```
> eth.blockNumber
```

### Details of current block

```
> eth.getBlock( eth.blockNumber ) 
```


### Which node minded the last block

```
> eth.getBlock(eth.blockNumber).miner
```

### Account balance, in ether

```
> web3.fromWei(eth.getBalance(eth.accounts[0]))
```

### Transfer ether between accounts

First get the account numbers by doing 

`> eth.accounts`

Then unlock the account you are sending from

`> personal.unlockAccount( <from account> )`

eg. 

`> personal.unlockAccount(eth.accounts[0])`

Finally transfer 1 ether

```
> eth.sendTransaction({from: "<from account>", to: "<to account>", value: web3.toWei(1, "ether")})
```


### Exit

```
> exit
```

(This will also stop the node from running if it was started using `$ geth console` (as opposed to `$ geth attach`))


## All Geth Commands

[The full list of geth commands](https://ethereum.stackexchange.com/questions/28703/full-list-of-geth-terminal-commands/) 

----

*These notes are originally from : [https://github.com/krisrandall/codecave_ethereum_blockchain](https://github.com/krisrandall/codecave_ethereum_blockchain)*



 