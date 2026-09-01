#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [ -d 'bips' ];
then
    echo "Updating bitcoin/bips"
    git -C bips pull origin master
else
    echo "Pulling bitcoin/bips"
    git clone https://github.com/bitcoin/bips.git
fi

echo "Converting mediawiki BIPs used by the book to markdown"
failed=0
while IFS= read -r md; do
    base="$(basename "$md" .md)"
    if [[ -f "bips/${base}.md" ]] && git -C bips ls-files --error-unmatch "${base}.md" >/dev/null 2>&1; then
        continue
    fi
    wiki="bips/${base}.mediawiki"
    if [[ ! -f "$wiki" ]]; then
        echo "error: missing $md (no ${base}.md or ${base}.mediawiki upstream)" >&2
        failed=1
        continue
    fi
    echo "  $wiki"
    tmp="$(mktemp)"
    # Strip mediawiki <ref> footnotes that some BIPs leave unclosed.
    sed -E 's#</?ref[^>]*>##g' "$wiki" > "$tmp"
    if ! pandoc -f mediawiki -t gfm --wrap=none -o "bips/${base}.md" "$tmp"; then
        echo "error: pandoc failed to convert $wiki" >&2
        failed=1
    fi
    rm -f "$tmp"
done < <(grep -E '^\s+bips/bip-[0-9]+\.md' scripts/create.sh | awk '{print $1}')

if [[ "$failed" -ne 0 ]]; then
    echo "One or more BIP conversions failed." >&2
    exit 1
fi

{
    echo "## Source snapshot"
    echo ""
    echo "This book was built from the following commit of [bitcoin/bips](https://github.com/bitcoin/bips). Closed and withdrawn proposals are omitted so the book stays readable. If something here disagrees with upstream, upstream wins."
    echo ""
    echo '```'
    git -C bips log -n1
    echo '```'
} > include/git.md
