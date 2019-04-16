#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EUC testnet
#
# https://github.com/euchain/
#
################################################################################

EOSIOBIN="/opt/EUC/bin/bin"

DATADIR="/opt/EUC_Testnet"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

$EOSIOBIN/nodeos --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
