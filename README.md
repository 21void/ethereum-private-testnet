Ethereum private testnet in docker
==================================

- RPC port 8000

- "customer" (eth.accounts[0]) account address *0xb9cecc28e4ccf647f4dd77a301b848c349e37fe8*
- "shop" (eth.accounts[1]) account address *0xcaed53db833c405fada2f406638f09568b68129f*

Sending simple transaction with console
---------------------------------------

```
$ docker exec -ti satoshibox_ethereumd_1 geth attach /data/node-1/geth.ipc
Welcome to the Geth JavaScript console!

instance: Geth/node1/v1.5.9-stable-a07539fb/linux/go1.7.4
coinbase: 0xb9cecc28e4ccf647f4dd77a301b848c349e37fe8
at block: 3076 (Fri, 12 May 2017 08:44:12 CEST)
 datadir: /data/node-1
 modules: admin:1.0 debug:1.0 eth:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

> personal.unlockAccount(eth.accounts[1], "")
true
> eth.sendTransaction({from:eth.accounts[1], to:eth.accounts[0], value: web3.toWei(0.05, "ether")})
"0x14041f80b185c8a3ba234008e7c3ea9e21cdb0e277f7bc2db3bf4eeac99d6ad1"
```
