# Process & History

Bitcoin does not have a standards body that can decree a change. What it has is a written process, a classification of documents, and a few hard-won lessons about how rules actually activate on a live chain.

This chapter is the map of that process. BIP 3 is the current process document. BIP 123 explains how proposals are classified — consensus, peer services, API, applications — so you know what kind of thing you are reading. BIP 9 and BIP 8 describe version-bits activation, which is how most modern soft forks have been scheduled. BIP 90 is the cleanup that followed: once a deployment is buried under enough proof of work, nodes can stop carrying the old state machine.

BIP 50 sits at the end as a warning. It is the post-mortem of the March 2013 chain fork, when two versions of the software briefly disagreed about what a valid block was. The later activation BIPs make more sense after you have read that story.

In this chapter:

- BIP 3 — Updated BIP Process
- BIP 123 — BIP Classification
- BIP 9 — Version bits with timeout and delay
- BIP 8 — Version bits with lock-in by height
- BIP 90 — Buried Deployments
- BIP 50 — March 2013 Chain Fork Post-Mortem
