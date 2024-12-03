# Which public key signed input 0 in this tx:
#   `e5969add849689854ac7f28e45628b89f7454b83e9699e551ce14b6f90c86163`
def get_signing_pubkey(txid):
    raw_tx = subprocess.run(["bitcoin-cli", "getrawtransaction", txid, "true"], capture_output=True, text=True).stdout
    tx_data = json.loads(raw_tx)
    return tx_data["vin"][0]["scriptSig"]["asm"].split()[1]

txid = "e5969add849689854ac7f28e45628b89f7454b83e9699e551ce14b6f90c86163"
print(get_signing_pubkey(txid))
