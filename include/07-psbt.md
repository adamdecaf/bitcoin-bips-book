# Partially Signed Transactions

A PSBT is a transaction that is not finished yet. It carries the inputs, the outputs, and the extra data each signer needs — previous scripts, derivation paths, signatures already collected — in a format every wallet can parse.

BIP 174 is the original format. BIP 370 is version 2, which is easier to modify before anyone has signed. BIP 371 adds the Taproot fields. BIP 373 adds the MuSig2 fields. If you implement hardware signing, coinjoin, or multisig, you will live in these four documents.

The idea is simple even when the fields are not: never ask a signer to guess. Put the UTXO, the script, and the bip32 path in the PSBT so a device that cannot see the chain can still produce a valid signature, and so a coordinator can combine those signatures without holding the keys.

In this chapter:

- BIP 174 — Partially Signed Bitcoin Transaction Format
- BIP 370 — PSBT Version 2
- BIP 371 — Taproot Fields for PSBT
- BIP 373 — MuSig2 PSBT Fields
