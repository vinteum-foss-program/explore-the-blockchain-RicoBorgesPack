# Which tx in block 257,343 spends the coinbase output of block 256,128?
COINBASE_TXID=$(bitcoin-cli getblock $(bitcoin-cli getblockhash 256128) | jq -r '.tx[0]')
BLOCK_HASH=$(bitcoin-cli getblockhash 257343)
TXIDS=$(bitcoin-cli getblock $BLOCK_HASH | jq -r '.tx[]')

for TXID in $TXIDS; do
  if bitcoin-cli getrawtransaction $TXID true | jq -e ".vin[] | select(.txid == \"$COINBASE_TXID\")" > /dev/null; then
    echo $TXID
    break
  fi
done
