# Scripts, Miniscript, and Policy

The last chapter is the practical layer on top of script: how wallets build standard multisig, how they sort keys and inputs so two implementations produce the same transaction, how a sender asks for replace-by-fee, and how a descriptor wallet describes a whole policy instead of a single script.

BIP 11 is M-of-N standard transactions, the original multisig that P2SH later made usable. BIP 67 sorts the public keys so two wallets independently derive the same P2SH address. BIP 69 sorts inputs and outputs lexicographically so a transaction has a canonical order. BIP 125 is opt-in full replace-by-fee — the signal that a transaction may be replaced with a higher fee.

BIP 388 sits at the end. Wallet policies are how a descriptor wallet talks about accounts, change, and multisig templates as one object. Descriptors themselves live in the earlier chapter; I did not repeat BIP 380 here.

Miniscript has a BIP number, but it is still a draft, so it is not in this book. When you want the compiler that sits between a policy and a script, that is the document to read next, upstream.

In this chapter:

- BIP 11 — M-of-N Standard Transactions
- BIP 67 — Deterministic P2SH multisig through public key sorting
- BIP 69 — Lexicographical Indexing of Transaction Inputs and Outputs
- BIP 125 — Opt-in Full Replace-by-Fee Signaling
- BIP 388 — Wallet Policies for Descriptor Wallets
