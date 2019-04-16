#!/bin/bash

################################################################################
# EUC Scripts
#
# Scrip Created by http://CryptoLions.io
# For EUC testnet
#
# https://github.com/euchain/
#
###############################################################################

NODEOSBINDIR="/opt/EUC/bin/bin"
DATADIR="/opt/EUC_Testnet/Wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/keosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
