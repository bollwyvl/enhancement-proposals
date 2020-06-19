#!/usr/bin/env bash
set -eux

pytest-check-links \
  --check-links-cache \
  --check-links-cache-expire-after 604800 \
  --links-ext html \
  _build
