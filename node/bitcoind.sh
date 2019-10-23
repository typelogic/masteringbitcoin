#!/bin/sh
#

port=12345
for ipaddr in $*;do
    nodes="$nodes -addnode=$ipaddr:$port"
done

bitcoind $nodes \
    -regtest \
    -server \
    -rpcuser=rpc \
    -rpcpassword=x \
    -rpcport=10340 \
    --datadir=/root/bitcoind-simnet/ \
    -port=$port \
    -fallbackfee=0.0002
