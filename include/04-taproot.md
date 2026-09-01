# Schnorr, Taproot, Tapscript

Taproot is one upgrade in three documents. BIP 340 defines Schnorr signatures on secp256k1. BIP 341 defines the SegWit version 1 spending rules: a public key in the output, an optional script tree, and a way to spend with either a key path or a script path. BIP 342 is Tapscript, the validation rules inside those leaves.

Together they are the 2021 consensus change that wallets mean when they say "Taproot address." Key-path spends look like a single signature. Script-path spends reveal only the leaf they use. Multisig and more complicated policies can hide behind the same output type.

I kept this chapter short on purpose. The three BIPs are meant to be read as a set. If you skipped the SegWit documents in the previous chapter, go back — Taproot is version 1 witness, and BIP 341 assumes you already know version 0.

In this chapter:

- BIP 340 — Schnorr Signatures for secp256k1
- BIP 341 — Taproot: SegWit version 1 spending rules
- BIP 342 — Validation of Taproot Scripts
