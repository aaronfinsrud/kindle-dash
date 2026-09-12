#!/usr/bin/env sh
DIR="$(dirname "$0")"
OUTPUT="$1"
# optional 2nd arg overrides the URL (used for the burst window)
URL="${2:-$DASHBOARD_URL}"

"$DIR/../xh" --ignore-stdin --check-status --download \
  --output "$OUTPUT" "$URL"
