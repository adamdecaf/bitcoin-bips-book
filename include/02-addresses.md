# Addresses and Encodings

Before a wallet can pay anyone, it has to write down where the coins should go. That string in the UI is not the script itself. It is an encoding of a script or a witness program, plus a checksum, plus a network marker so you do not send mainnet coins to a testnet key.

This chapter follows that encoding as it evolved. BIP 13 is the Base58Check format for pay-to-script-hash, which is how most multisig looked for years. BIP 173 introduces Bech32 for native SegWit, and BIP 350 tightens the checksum (Bech32m) for Taproot and later witness versions. BIP 321 is the URI scheme wallets use when they share a payment request as a `bitcoin:` link.

BIP 179 is a small informational note with a large effect on language: what we casually call an "address" is really a payment recipient identifier. Reading it first or last both work. I put it at the end so the encodings have already earned the word.

In this chapter:

- BIP 13 — Address Format for pay-to-script-hash
- BIP 173 — Bech32
- BIP 350 — Bech32m
- BIP 321 — URI Scheme
- BIP 179 — Name for payment recipient identifiers
