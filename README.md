# EUC Testnet

Based on: v1.8.0-rc2 EOSIO and 1.7.0-rc1 System Contracts  

http://testnet.europechain.io/

API endpoints:
http://testnet.europechain.io:8888/v1/chain/get_info  
http://testnet.europechain.io:2118/v1/chain/get_info  
https://testnet.europechain.io:4388/v1/chain/get_info  


## EOSIO Compilation
Please compile EOSIO with `-s EUC` option

## Setup data-dir
1. Create folder /opt/EUC_Testnet 
```
mkdir /opt/EUC_Testnet
```

2. Clone this GIT repo in same folder:
```
cd /opt/EUC_Testnet
git clone https://github.com/euchain/Testnet.git ./
```

3. If you use different folder plase change paths in files `cleos.sh`, `start,sh` and ` stop.sh`

4. In files `cleos.sh` and `start.sh` please change path for `EOSIOBIN` to your compiled cleos, nodeos and keosd files

5. Change parameters for Wallet `start_wallet.sh` and `stop_wallet.sh` according to your datadir and eosio bins

6. Config.ini:
- Update Peers:
```
    p2p-peer-address = testnet.europechain.io:9876
    p2p-peer-address = testnet.europechain.io:2198
```
- If its BP node please uncomment and add BP sign keys
```
    signature-provider = <SIGN_PUB_KEY>=KEY:<SIGN_PRIV_KEY>
    producer-name = BP_NAME_ACC
```
    Where <SIGN_PUB_KEY> = your BP sign Public key (used in regproducer) and <SIGN_PRIV_KEY> - sign private key
- Replace `YOUR_DOMAIN_OR_IP` with your external IP or Domain name:
```
    p2p-server-address = YOUR_DOMAIN_OR_IP:9876
```

## First start
./start.sh --delete-all-blocks --genesis-json genesis.json

