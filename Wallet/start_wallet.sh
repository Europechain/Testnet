#!/bin/bash

################################################################################
# XEC Scripts
#
# Scrip Created by http://CryptoLions.io
# For Europe Chain testnet
#
# https://github.com/euchain/
#
###############################################################################

NODEOSBINDIR="/opt/XEC/bin/bin"
DATADIR="/opt/XEC_Testnet/Wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/keosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
