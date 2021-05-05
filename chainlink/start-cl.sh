#! /bin/bash

docker run -p 6688:6688 -it -v /Users/gurkaransahni/Projects/chainlink-dev/chainlink:/chainlink --env-file /Users/gurkaransahni/Projects/chainlink-dev/chainlink/chainlink-dev.env\
 --env-file /Users/gurkaransahni/Projects/chainlink-dev/truffle/build/addrs.env -e ETH_URL=ws://host.docker.internal:8545\
 --name chainlink-dev-2 -d smartcontract/chainlink local n -p /chainlink/chainlink.pwd -a /chainlink/api.pwd
