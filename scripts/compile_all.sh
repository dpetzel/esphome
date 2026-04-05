#!/bin/bash
set -e

VERSION="${1:-$(date +%Y%m%d)-$(git rev-parse --short HEAD)}"
SCRIPT_DIR="$(dirname "$0")"
FAILED=0

for yaml in config/*.yaml; do
  [ "$yaml" = "config/secrets.yaml" ] && continue
  "$SCRIPT_DIR/compile.sh" "$yaml" "$VERSION" || FAILED=1
done

exit $FAILED
