#!/usr/bin/env bash
set -eu

CACHE_NAME=$(pwd)/.pytest-check-links-cache

cd _build/html

pytest \
  --check-links \
  --check-links-cache \
  --check-links-cache-name $CACHE_NAME \
  --check-links-cache-expire-after 604800 \
  --links-ext html \
