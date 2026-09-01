#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

# Paths are markdown. setup.sh converts upstream .mediawiki files into .md.
inputs=(
    include/intro.md
    include/how-to-read.md
    include/git.md

    include/01-process.md
    bips/bip-0003.md # Updated BIP Process
    bips/bip-0123.md # BIP Classification
    bips/bip-0009.md # Version bits with timeout and delay
    bips/bip-0008.md # Version bits with lock-in by height
    bips/bip-0090.md # Buried Deployments
    bips/bip-0050.md # March 2013 Chain Fork Post-Mortem

    include/02-addresses.md
    bips/bip-0013.md # Address Format for pay-to-script-hash
    bips/bip-0173.md # Bech32
    bips/bip-0350.md # Bech32m
    bips/bip-0321.md # URI Scheme
    bips/bip-0179.md # Name for payment recipient identifiers

    include/03-consensus.md
    bips/bip-0016.md # Pay to Script Hash
    bips/bip-0030.md # Duplicate transactions
    bips/bip-0034.md # Block v2, Height in Coinbase
    bips/bip-0042.md # A finite monetary supply for Bitcoin
    bips/bip-0065.md # OP_CHECKLOCKTIMEVERIFY
    bips/bip-0066.md # Strict DER signatures
    bips/bip-0068.md # Relative lock-time
    bips/bip-0112.md # CHECKSEQUENCEVERIFY
    bips/bip-0113.md # Median time-past as lock-time
    bips/bip-0141.md # Segregated Witness (Consensus layer)
    bips/bip-0143.md # Transaction Signature Verification for Version 0 Witness Program
    bips/bip-0147.md # Dealing with dummy stack element malleability
    bips/bip-0148.md # Mandatory activation of segwit deployment
    bips/bip-0091.md # Reduced threshold Segwit MASF

    include/04-taproot.md
    bips/bip-0340.md # Schnorr Signatures for secp256k1
    bips/bip-0341.md # Taproot: SegWit version 1 spending rules
    bips/bip-0342.md # Validation of Taproot Scripts

    include/05-wallets.md
    bips/bip-0032.md # Hierarchical Deterministic Wallets
    bips/bip-0038.md # Passphrase-protected private key
    bips/bip-0039.md # Mnemonic code for generating deterministic keys
    bips/bip-0043.md # Purpose Field for Deterministic Wallets
    bips/bip-0044.md # Multi-Account Hierarchy for Deterministic Wallets
    bips/bip-0049.md # Derivation scheme for P2WPKH-nested-in-P2SH based accounts
    bips/bip-0084.md # Derivation scheme for P2WPKH based accounts
    bips/bip-0085.md # Deterministic Entropy From BIP32 Keychains
    bips/bip-0086.md # Key Derivation for Single Key P2TR Outputs
    bips/bip-0087.md # Hierarchy for Deterministic Multisig Wallets
    bips/bip-0048.md # Multi-Script Hierarchy for Multi-Sig Wallets

    include/06-descriptors.md
    bips/bip-0380.md # Output Script Descriptors General Operation
    bips/bip-0381.md # Non-Segwit Output Script Descriptors
    bips/bip-0382.md # Segwit Output Script Descriptors
    bips/bip-0383.md # Multisig Output Script Descriptors
    bips/bip-0384.md # combo() Output Script Descriptors
    bips/bip-0385.md # raw() and addr() Output Script Descriptors
    bips/bip-0386.md # tr() Output Script Descriptors
    bips/bip-0387.md # Tapscript Multisig Output Script Descriptors

    include/07-psbt.md
    bips/bip-0174.md # Partially Signed Bitcoin Transaction Format
    bips/bip-0370.md # PSBT Version 2
    bips/bip-0371.md # Taproot Fields for PSBT
    bips/bip-0373.md # MuSig2 PSBT Fields

    include/08-p2p.md
    bips/bip-0014.md # Protocol Version and User Agent
    bips/bip-0031.md # Pong message
    bips/bip-0035.md # mempool message
    bips/bip-0037.md # Connection Bloom filtering
    bips/bip-0061.md # Reject P2P message
    bips/bip-0111.md # NODE_BLOOM service bit
    bips/bip-0130.md # sendheaders message
    bips/bip-0133.md # feefilter message
    bips/bip-0144.md # Segregated Witness (Peer Services)
    bips/bip-0152.md # Compact Block Relay
    bips/bip-0155.md # addrv2 message
    bips/bip-0157.md # Client Side Block Filtering
    bips/bip-0158.md # Compact Block Filters for Light Clients
    bips/bip-0159.md # NODE_NETWORK_LIMITED service bit
    bips/bip-0324.md # Version 2 P2P Encrypted Transport Protocol
    bips/bip-0339.md # WTXID-based transaction relay
    bips/bip-0434.md # Peer Feature Negotiation

    include/09-mining.md
    bips/bip-0022.md # getblocktemplate - Fundamentals
    bips/bip-0023.md # getblocktemplate - Pooled Mining
    bips/bip-0145.md # getblocktemplate Updates for Segregated Witness

    include/10-payments.md
    bips/bip-0070.md # Payment Protocol
    bips/bip-0071.md # Payment Protocol MIME types
    bips/bip-0072.md # bitcoin: uri extensions for Payment Protocol
    bips/bip-0073.md # Use "Accept" header for response type negotiation with Payment Request URLs
    bips/bip-0075.md # Out of Band Address Exchange using Payment Protocol Encryption
    bips/bip-0078.md # A Simple Payjoin Proposal
    bips/bip-0352.md # Silent Payments
    bips/bip-0353.md # DNS Payment Instructions
    bips/bip-0327.md # MuSig2 for BIP340-compatible Multi-Signatures
    bips/bip-0137.md # Signatures of Messages using Private Keys
    bips/bip-0322.md # Generic Signed Message Format

    include/11-script-tools.md
    bips/bip-0011.md # M-of-N Standard Transactions
    bips/bip-0067.md # Deterministic Pay-to-script-hash multi-signature addresses through public key sorting
    bips/bip-0069.md # Lexicographical Indexing of Transaction Inputs and Outputs
    bips/bip-0125.md # Opt-in Full Replace-by-Fee Signaling
    bips/bip-0388.md # Wallet Policies for Descriptor Wallets

    include/conclusion.md
)

format=${1:-}

missing=0
for input in "${inputs[@]}"
do
    if [[ ! -f "$input" ]]; then
        echo "error: missing $input" >&2
        missing=1
    fi
done
if [[ "$missing" -ne 0 ]]; then
    echo "Run 'make setup' first, or update the chapter list." >&2
    exit 1
fi

chapters=()
for input in "${inputs[@]}"
do
    if [[ "$format" == "pdf" ]]; then
        chapters+=("include/pagebreak.md" "$input")
    else
        chapters+=("$input")
    fi
done

function create_epub() {
    pandoc --metadata-file=metadata.yml \
           --epub-metadata=./metadata-epub.yml \
           --syntax-highlighting=monochrome \
           --resource-path=.:bips \
           -s -o bitcoin-bips-book.epub \
           "${chapters[@]}"
}

function create_pdf() {
    pandoc --metadata-file=metadata.yml \
           --toc --toc-depth 2 \
           --pdf-engine=xelatex \
           --columns=72 --wrap=auto \
           --listings -H listings-settings.tex \
           --resource-path=.:bips \
           -V fontsize="10pt" \
           -V mainfont="Palatino" \
           -V monofont="Monaco" \
           -V geometry:margin="0.75in" \
           -s -o bitcoin-bips-book.pdf \
           "${chapters[@]}"
}

case "$format" in
    epub)
        echo "Building ePUB"
        create_epub
        ;;
    pdf)
        echo "Building PDF"
        create_pdf
        ;;
    *)
        echo "Unknown format ${format:-<none>}" >&2
        echo "usage: $0 epub|pdf" >&2
        exit 1
        ;;
esac
