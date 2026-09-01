# Mining and Block Templates

Miners do not have to reimplement the consensus engine to build a block. They ask a full node for a template: transactions, the previous block hash, the version bits, and the other fields that have to be correct for the block to be valid.

BIP 22 is that interface. BIP 23 extends it for pooled mining. BIP 145 updates the template for SegWit, because a witness-aware block is not just a bag of legacy transactions. If you have ever pointed mining hardware at Bitcoin Core, you have spoken this protocol.

These three documents are the whole chapter on purpose. Stratum and other pool wires exist, but they are not BIPs in this set. The getblocktemplate family is the specification nodes actually ship.

In this chapter:

- BIP 22 — getblocktemplate - Fundamentals
- BIP 23 — getblocktemplate - Pooled Mining
- BIP 145 — getblocktemplate Updates for Segregated Witness
