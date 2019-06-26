#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For Europe Chain testnet
#
# https://github.com/euchain/
#
################################################################################

EOSIOBIN="/opt/XEC/bin/bin"

DATADIR="/opt/XEC_Testnet"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

$EOSIOBIN/nodeos --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
