# Source snapshot

This book was built from the following commit of [bitcoin/bips](https://github.com/bitcoin/bips). Closed and withdrawn proposals are omitted so the book stays readable. If something here disagrees with upstream, upstream wins.

```
commit 100ba872c808946155b1eeb8c4568058f2eea0a7
Author: pythcoiner <124568858+pythcoiner@users.noreply.github.com>
Date:   Sat Oct 24 17:11:13 2026 +0200

    Add BIP139: Wallet Metadata Backup Format (#2130)
    
    * bip139: wallet metadata format
    
    * bip139: add the Version header to the preamble
    
    * bip139: keep a single psbts field and fix the spend status link
    
    * bip139: fold the version section and bip field into the version value
    
    * bip139: capitalize Bitcoin Core and clarify the change_descriptor note
    
    * bip139: replace the three account birth time fields with birth_block
    
    * bip139: drop descriptor_id and change_descriptor_id
    
    * bip139: drop field aliases, keeping name and labels
    
    * bip139: restrict descriptor and change_descriptor to a string
    
    * bip139: make version, type, descriptor, key, txid, outpoint and tweak mandatory
    
    * bip139: move field definitions to a companion registry
    
    * bip139: add the wallet survey behind these decisions
    
    * bip139: replace the wallet description field with a backup note
    
    * bip139: add the backup date field
    
    * bip139: add the account gap_limit field
    
    * bip139: add the multi_bip380 account type
    
    * bip139: give the bip352_labels range an explicit encoding
    
    * bip139: add a general coin object
    
    * bip139: move signers above the account
    
    * bip139: add signer modality and device records
    
    * bip139: add bip85 application and index
    
    * bip139: add Bitkey to the wallet survey
    
    * bip139: state how to derive birth_block from a creation date
    
    * bip139: define the timestamp format once
    
    * bip139: rename the transaction time field to block_time
    
    * bip139: keep last_height on the account only
    
    * bip139: state that type names the descriptor language
    
    * bip139: drop output_type, the descriptor already states it
    
    * bip139: replace the account active flag with a status enum
    
    * bip139: add mutinynet and scope a backup to one network
    
    * bip139: record that the label gap belongs to BIP-329
    
    * bip139: record that proprietary needs no change
    
    * bip139: make the survey annex-ready
    
    * bip139: record that mainnet mnemonics stay out of scope
    
    * bip139: reword the mnemonic evidence heading
    
    * bip139: correct the birth_block evidence, Sparrow stores a height
    
    * bip139: type and descriptor fit every surveyed wallet
    
    * bip139: correct the addr descriptor solvability note
    
    * bip139: re-assess every partial score against fillability
    
    * bip139: store psbts once at wallet level, reference them per account
    
    * bip139: store transactions once at wallet level, reference them per account
    
    * bip139: txid is the transaction map key, not a field
    
    * bip139: refresh the matrix after the fillability re-assessment
    
    * bip139: electrum holds no bip39 mnemonic at all
    
    * bip139: sp_output.label has no constituency
    
    * bip139: collapse the survey to a two-value scale
    
    * bip139: drop the obsolete partial-score analysis
    
    * bip139: size the matrix field column from the data
    
    * bip139: cut the survey down to the table and its results
    
    * bip139: recompute liana compat against the current draft
    
    * bip139: correct the liana breaking-change count
    
    * bip139: make network mandatory
    
    * bip139: network no longer breaks liana on import
    
    * bip139: render wallet fields as a wrapped table
    
    * bip139: render account fields as a wrapped table
    
    * bip139: render every field section as a wrapped table
    
    * bip139: the registry is part of the bip, not a reference to it
    
    * bip139: drop the registration process from the registry intro
    
    * bip139: put field rationale in the cell, not below the table
    
    * bip139: keep code spans whole when wrapping cells
    
    * bip139: render field tables as preformatted blocks
    
    * bip139: drop link definitions the tables no longer use
    
    * bip139: use a bordered grid for the field tables
    
    * bip139: give birth_block an estimation formula and drop the enum underscore
    
    * bip139: merge silent payment outputs into the coin object
    
    * bip139: restore spend_status and give the sp label scalar a home
    
    * bip139: register the transaction fee field
    
    * bip139: rebuild the survey matrix against the current field set
    
    * bip139: drop survey findings the draft now addresses
    
    * bip139: bar passphrase-protected seeds from bip39_mnemonic
    
    * bip139: record the missing-field decisions in the survey
    
    * bip139: cut the survey down to its revision list and matrix
    
    * bip139: reword the survey as a wallet to field mapping
    
    * bip139: reference the wallet support annex from the spec
    
    * bip139: list the mandatory fields in the registry tables
    
    * bip139: point the spec at the registry as the complete field list
    
    * bip139: spell out mandatory and optional in the registry req column
    
    * bip139: mark only the optional fields in the registry tables
    
    * bip139: retitle and reframe the BIP around moving between wallets
    
    * bip139: call the artefact an export throughout
    
    * bip139: scope the mnemonic advice to exports kept as backups
    
    * bip139: say that most metadata cannot be recovered from the chain
    
    * bip139: clarify account and signer metadata fields
    
    * bip139: cut the registry cells back to the field description
    
    * bip139: reword the registry field descriptions
    
    * bip139: give the device record its own registry table
    
    * bip139: keep an unknown enum value from failing the import
    
    * bip139: define the device transports field
    
    * bip139: point the devices row at the device object
    
    * bip139: backup -> export in README
    
    * bip139: clarify export fields and remove survey annex
    
    * bip139: Drop Version header in absence of Changelog
```
