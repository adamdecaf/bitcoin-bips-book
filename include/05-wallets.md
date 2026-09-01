# Keys, Seeds, and Derivation

A wallet is a way to turn one secret into many keys, and those keys into the scripts you actually receive on. This chapter is that pipeline.

BIP 32 is the root: hierarchical deterministic wallets, extended keys, and the child-key derivation everyone else builds on. BIP 38 encrypts a key with a passphrase. BIP 39 turns entropy into a mnemonic sentence. BIP 43 and BIP 44 add a purpose field and a multi-account tree so different applications can share one seed without colliding.

The later derivation BIPs pick a script type and pin a path for it: BIP 49 for P2WPKH nested in P2SH, BIP 84 for native P2WPKH, BIP 86 for single-key P2TR, BIP 48 and BIP 87 for multisig. BIP 85 is the odd one out in a useful way — it derives more entropy from a BIP 32 tree, so one seed can generate other seeds.

None of these documents change consensus. They are how wallets agree with each other about which key to use. If two wallets share a seed and disagree on the path, they will not see the same coins.

In this chapter:

- BIP 32 — Hierarchical Deterministic Wallets
- BIP 38 — Passphrase-protected private key
- BIP 39 — Mnemonic code for generating deterministic keys
- BIP 43 — Purpose Field for Deterministic Wallets
- BIP 44 — Multi-Account Hierarchy
- BIP 49 — P2WPKH-nested-in-P2SH derivation
- BIP 84 — P2WPKH derivation
- BIP 85 — Deterministic Entropy From BIP32 Keychains
- BIP 86 — Key Derivation for Single Key P2TR Outputs
- BIP 87 — Hierarchy for Deterministic Multisig Wallets
- BIP 48 — Multi-Script Hierarchy for Multi-Sig Wallets
