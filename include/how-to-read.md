# How to Read This Book

This book is organized by theme, not by BIP number. Start with process and history, then addresses, then the consensus changes that shipped, then Taproot. After that the chapters follow how software is built: keys and wallets, descriptors, PSBTs, the peer-to-peer network, mining templates, payments, and script policy.

You do not have to read it front to back. A wallet engineer can jump to keys, descriptors, and PSBTs. A node implementer can live in the P2P chapter. Someone tracing a soft fork can read process, then consensus, then Taproot. The original BIP numbers stay in the headings so you can always find the same document in [bitcoin/bips](https://github.com/bitcoin/bips).

I left out closed and withdrawn BIPs on purpose. They matter as history, but they interrupt a reading copy. Drafts that are not yet complete are out too. What remains is the set of specifications that wallets and nodes actually implement.

A few of the included documents are informational rather than consensus rules. They still belong here because they describe how Bitcoin is used in practice — derivation paths, address encodings, payment URIs, and the like. When a chapter mixes those with consensus changes, the intro will say so.
