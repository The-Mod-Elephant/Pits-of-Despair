#!/usr/bin/env bash
set -euo pipefail

main() {
  weidu --nogame --traify-comment --traify-old-tra "${2}" --traify "${1}"
  mv "${1%.*}.tra" "${2}"
  chmod 644 "${1}"
}

main $@
