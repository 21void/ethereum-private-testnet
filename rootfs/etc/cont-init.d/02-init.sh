#!/bin/sh

geth --identity "node-1" --datadir "/data/node-1" --networkid 1900 init /etc/eth/customGenesis.json

geth --identity "node-2" --datadir "/data/node-2" --networkid 1900 init /etc/eth/customGenesis.json