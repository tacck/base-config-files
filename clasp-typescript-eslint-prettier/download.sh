#!/bin/bash

BASE_URL="https://raw.githubusercontent.com/tacck/base-config-files/main"
TARGET_SET=$(basename $(pwd))
CURL_OPT="-s"
IGNORE_FILES=("README.md" "download.sh")

mkdir -p .vscode src dist

for file_name in $(find . -type f); do
  echo ${IGNORE_FILES[@]} | xargs -n 1 | grep -E "^$(basename ${file_name})$"
  if [ $? -eq 0 ]; then
    continue
  fi

  f=$(echo ${file_name} | sed 's/^\.\///')
  CURL_OPT+=" -o ${f} ${BASE_URL}/${TARGET_SET}/${f}"
done

curl ${CURL_OPT}
