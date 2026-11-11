#!/bin/sh
# Fail if a mailbox address is in the public skill.
set -e
root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
cd "$root"

if grep -R -n -E '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' skill README.md; then
  echo "A mailbox address is in the public skill."
  exit 1
fi

echo "Public skill has no mailbox address."
