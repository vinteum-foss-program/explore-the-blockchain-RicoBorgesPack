# (true / false) Verify the signature by this address over this message:
#   address: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   message: `1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa`
#   signature: `HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM=`

#Python
address = "1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa"
signature = "HCsBcgB+Wcm8kOGMH8IpNeg0H4gjCrlqwDf/GlSXphZGBYxm0QkKEPhh9DTJRp2IDNUhVr0FhP9qCqo2W0recNM="
message = "1E9YwDtYf9R29ekNAfbV7MvB4LNv7v3fGa"

is_valid = call_rpc("verifymessage", [address, signature, message])
print(f"Signature is Valid: {is_valid}")
