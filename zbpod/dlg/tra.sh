#!/usr/bin/env bash
set -euo pipefail
LC_CTYPE=C

[[ -z $( ls temp.tra || false ) ]] && touch temp.tra

for file in $*; do
  echo "---Processing file ${file}---"
  trap "rm -f temp.d" EXIT
  sed -E "s/([SAY|REPLY])\s+\#[0-9]+\s+\/\*\s+~(.*)~\s+\*\//\1 ~\2~/g" "${file}" > temp.d;
  rm "${file}"
  sed -E "s/([SAY|REPLY])\s+\#[0-9]+\s+\/\*\s+~(.*)~\s+(.*)\s+\*\//\1 ~\2~ \3/g" temp.d > "${file}"
  weidu --traify-comment --traify ${file} --traify-old-tra temp.tra --out temp.tra
done
