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

DIR="/opt/EUC_Testnet/Wallet"

    if [ -f $DIR"/wallet.pid" ]; then
        pid=$(cat $DIR"/wallet.pid")
        echo $pid
        kill $pid
        rm -r $DIR"/wallet.pid"

        echo -ne "Stoping Wallet"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rWallet stopped. \n"

    fi

