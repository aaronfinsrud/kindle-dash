#!/usr/bin/env sh
DIR="$(dirname "$0")"
OUTPUT="$1"

"$DIR/../xh" --ignore-stdin --check-status --download \
  --output "$OUTPUT" "https://e-ink-tracker.vercel.app/api/snapshot.png"