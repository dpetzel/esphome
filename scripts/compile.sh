#!/bin/bash
set -e

YAML="$1"
VERSION="${2:-$(date +%Y%m%d)-$(git rev-parse --short HEAD)}"
OUTPUT_DIR="build"
CONFIG_DIR="config"

if [ -z "$YAML" ]; then
  echo "Usage: $0 <yaml-file> [version]"
  exit 1
fi

name=$(basename "$YAML" .yaml)
mkdir -p "$OUTPUT_DIR"

echo "=== Compiling $name ==="

if docker compose run --rm -T esphome compile "/config/$(basename "$YAML")"; then
  firmware=$(find "$CONFIG_DIR/.esphome/build" -path "*/.pioenvs/*/firmware.bin" -newer "$YAML" 2>/dev/null | head -1)
  if [ -n "$firmware" ]; then
    cp "$firmware" "$OUTPUT_DIR/${name}-${VERSION}.bin"
    echo "=== $name: OK -> $OUTPUT_DIR/${name}-${VERSION}.bin ==="
  else
    echo "=== $name: compiled but firmware not found ==="
    exit 1
  fi
else
  echo "=== $name: FAILED ==="
  exit 1
fi
