# Only one single output remains unspent from block 123,321. What address was it sent to?
BLOCK_HASH=$(bitcoin-cli getblockhash 123321)
TXIDS=$(bitcoin-cli getblock $BLOCK_HASH | jq -r '.tx[]')

for TXID in $TXIDS; do
  UTXOS=$(bitcoin-cli gettxout $TXID 0 true)
  if [ ! -z "$UTXOS" ]; then
    echo $UTXOS | jq -r '.scriptPubKey.addresses[0]'
  fi
done
