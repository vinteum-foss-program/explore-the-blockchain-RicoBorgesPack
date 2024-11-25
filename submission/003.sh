# How many new outputs were created by block 123,456?

#Python
block_hash = call_rpc("getblockhash", [123456])
block_data = call_rpc("getblock", [block_hash])
print(f"Block Data: {block_data}")

# Número de transações no bloco
num_txs = len(block_data["tx"])
print(f"txs in block 123,456: {num_txs}")
