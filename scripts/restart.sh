#!/bin/sh

/usr/bin/screen -S Explorer -X quit

sleep 1s

rm -f /root/explorer/tmp/cluster.pid
cd /root/explorer
/usr/bin/screen -dmS Explorer /usr/bin/nodejs --stack-size=10000 /root/explorer/bin/cluster
cd - >/dev/null

