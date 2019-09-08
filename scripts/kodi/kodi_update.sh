#!/bin/sh
USER=kodi
PASS=kodi
PORT=8080

if [ "$#" -ne 1 ]; then
    echo "must enter hostname"
    exit
fi

curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}' -H 'content-type: application/json;' http://${USER}:${PASS}@${1}:8080/jsonrpc
echo ""
curl --data-binary '{ "jsonrpc": "2.0", "method": "AudioLibrary.Scan", "id": "mybash"}' -H 'content-type: application/json;' http://${USER}:${PASS}@${1}:8080/jsonrpc
echo ""

