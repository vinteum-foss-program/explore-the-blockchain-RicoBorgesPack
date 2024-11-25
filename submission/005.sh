# Create a 1-of-4 P2SH multisig address from the public keys in the four inputs of this tx:
#   `37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517`

#Python
def create_multisig_address(txid):
    raw_tx = subprocess.run(["bitcoin-cli", "getrawtransaction", txid, "true"], capture_output=True, text=True).stdout
    tx_data = json.loads(raw_tx)
    pubkeys = [input["scriptSig"]["asm"].split()[1] for input in tx_data["vin"]]
    
    multisig_result = subprocess.run(["bitcoin-cli", "addmultisigaddress", "1", f"[{','.join(pubkeys)}]"], capture_output=True, text=True)
    return json.loads(multisig_result.stdout)["address"]

txid = "37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517"
print(create_multisig_address(txid))
