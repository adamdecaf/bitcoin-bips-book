# Paying People

An address is enough to send coins, but it is a blunt instrument. This chapter is the rest of the payment stack: how a merchant once asked for a signed payment request, how two wallets can cooperate on a payjoin, how a recipient can publish a silent-payment scan key instead of a fresh address, and how DNS can carry those instructions under a human-readable name.

BIP 70 through 75 are the old payment protocol — protobuf invoices, MIME types, URI extensions, and encrypted out-of-band exchange. They shipped, they are still in the archive, and most wallets have moved on. I kept them because they are complete specifications and because later payment designs are easier to understand as reactions to them.

The newer documents are the ones wallets are implementing now. BIP 78 is payjoin. BIP 47 is reusable payment codes: one published code, many on-chain addresses. BIP 352 is silent payments, a later answer to the same problem. BIP 353 puts payment instructions in DNS. BIP 327 is MuSig2, which is how several signers produce one Schnorr signature. BIP 137 and BIP 322 are how you prove you hold a key without moving coins — the first for the legacy message format, the second for a generic signed message that works with modern scripts.

In this chapter:

- BIP 70 — Payment Protocol
- BIP 71 — Payment Protocol MIME types
- BIP 72 — bitcoin: uri extensions for Payment Protocol
- BIP 73 — Accept header negotiation for Payment Request URLs
- BIP 75 — Out of Band Address Exchange
- BIP 78 — A Simple Payjoin Proposal
- BIP 47 — Reusable Payment Codes
- BIP 352 — Silent Payments
- BIP 353 — DNS Payment Instructions
- BIP 327 — MuSig2 for BIP340-compatible Multi-Signatures
- BIP 137 — Signatures of Messages using Private Keys
- BIP 322 — Generic Signed Message Format
