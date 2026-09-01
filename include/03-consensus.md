# Consensus Changes That Shipped

These are the rule changes that made it onto the chain. Not every proposal in bitcoin/bips did. The closed hard-fork block-size documents, the withdrawn script ideas, and the drafts still in flight are elsewhere. This chapter is the history of what nodes actually enforce.

It starts with pay-to-script-hash, then the early hygiene forks: no duplicate transactions, height in the coinbase, and a finite monetary supply. Then come the timelock opcodes and the signature-encoding rules that made contracts safer to write. SegWit is the long middle of the chapter — the consensus rules, the signature scheme, the dummy-stack fix, and the activation fight that BIP 148 and BIP 91 record.

Read these in order if you can. Each fork assumes the ones before it. By the time you reach SegWit you will have seen why malleability, script versioning, and honest lock-time were worth a soft fork.

In this chapter:

- BIP 16 — Pay to Script Hash
- BIP 30 — Duplicate transactions
- BIP 34 — Block v2, Height in Coinbase
- BIP 42 — A finite monetary supply for Bitcoin
- BIP 65 — OP_CHECKLOCKTIMEVERIFY
- BIP 66 — Strict DER signatures
- BIP 68 — Relative lock-time
- BIP 112 — CHECKSEQUENCEVERIFY
- BIP 113 — Median time-past as lock-time
- BIP 141 — Segregated Witness
- BIP 143 — SegWit signature verification
- BIP 147 — Dummy stack element malleability
- BIP 148 — Mandatory activation of segwit
- BIP 91 — Reduced threshold Segwit MASF
