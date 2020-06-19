#!/usr/bin/env bash
set -eux

cd _build/html

hunspell \
  -d en-GB,en_US
  -p ../../.ci_support/dictionary.txt
  -l
  -H **/*.html
  | sort
  | uniq
  > check-spelling.txt

if [ -s "check-spelling.txt" ]; then
  cat check-spelling.txt
  exit 1
fi
