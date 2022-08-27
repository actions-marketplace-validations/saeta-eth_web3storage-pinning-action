#!/bin/sh

ipfs init
ipfs daemon &
waitForIpfs
ipfs pin remote service add web3.storage https://api.web3.storage/ $ACCESS_TOKEN
ipfs pin remote add --service=web3.storage --name=aelin-dapp $CID

echo "::set-output name=cid::$CID"
