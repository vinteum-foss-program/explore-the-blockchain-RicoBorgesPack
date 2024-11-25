# How many new outputs were created by block 123,456?
BLOCK_HASH=$(bitcoin-cli getblockhash 123456)
TXIDS=$(bitcoin-cli getblock $BLOCK_HASH | jq -r '.tx[]')

TOTAL_OUTPUTS=0
for TXID in $TXIDS; do
  OUTPUTS=$(bitcoin-cli getrawtransaction $TXID true | jq '.vout | length')
  TOTAL_OUTPUTS=$((TOTAL_OUTPUTS + OUTPUTS))
done

echo $TOTAL_OUTPUTS
#Python
#block_hash = call_rpc("getblockhash", [123456])
#block_data = call_rpc("getblock", [block_hash])
#print(f"Block Data: {block_data}")

#num_txs = len(block_data["tx"])
#print(f"txs in block 123,456: {num_txs}")
