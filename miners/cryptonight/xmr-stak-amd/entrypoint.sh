#!/bin/bash

cp config.tpl config.txt

sed -i.bak 's/{poolhostname}/'"$POOLHOSTNAME"'/g' config.txt
sed -i.bak 's/{port}/'"$PORT"'/g' config.txt
sed -i.bak 's/{wallet}/'"$WALLET"'/g' config.txt
sed -i.bak 's/{password}/'"$PASSWORD"'/g' config.txt
sed -i.bak 's/{rawintensity}/'"$RAWINTENSITY"'/g' config.txt
sed -i.bak 's/{worksize}/'"$WORKSIZE"'/g' config.txt

sed -i.bak 's/1.0/0/g' donate-level.h

./bin/xmr-stak-amd config.txt
