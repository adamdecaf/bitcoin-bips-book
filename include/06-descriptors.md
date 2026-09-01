# Output Script Descriptors

Derivation paths tell a wallet which keys to use. They do not tell it which script to wrap those keys in. Descriptors close that gap: a small language that names an output script, the keys inside it, and enough checksum to copy the string without corrupting it.

BIP 380 is the grammar. The rest of the family fills in the functions you actually type: non-SegWit scripts, SegWit scripts, multisig, `combo()`, `raw()` and `addr()`, Taproot `tr()`, and Tapscript multisig. Read 380 first. The others are short on purpose — they are the vocabulary, not a second language.

Wallets that speak descriptors can import a backup, a watch-only account, or a hardware-wallet policy without a side channel that explains "this is BIP 84, native SegWit." That is why this chapter sits between keys and PSBTs. You will need both.

In this chapter:

- BIP 380 — Output Script Descriptors General Operation
- BIP 381 — Non-Segwit Output Script Descriptors
- BIP 382 — Segwit Output Script Descriptors
- BIP 383 — Multisig Output Script Descriptors
- BIP 384 — combo() Output Script Descriptors
- BIP 385 — raw() and addr() Output Script Descriptors
- BIP 386 — tr() Output Script Descriptors
- BIP 387 — Tapscript Multisig Output Script Descriptors
