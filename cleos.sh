#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For Europe Chain testnet
#
# https://github.com/euchain/
#
################################################################################
EOSIOBIN=/opt/XEC/bin/bin

WALLETHOST="127.0.0.1"
NODEHOST="127.0.0.1"

NODEPORT="8888"
WALLETPORT="3000"

$NODEOSBINDIR/cleos -u http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT "$@"

