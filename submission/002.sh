# (true / false) Verify the signature by this address over this message:
#   address: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   message: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   signature: `HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM=`

ADDRESS="1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa"
SIGNATURE="HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM="
MESSAGE="1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa"
bitcoin-cli verifymessage $ADDRESS $SIGNATURE $MESSAGE

#Python


#is_valid = call_rpc("verifymessage", [address, signature, message])
#print(f"Signature is Valid: {is_valid}")
