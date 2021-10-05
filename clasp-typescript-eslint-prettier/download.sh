#!/bin/bash

BASE_URL="https://raw.githubusercontent.com/tacck/base-config-files/main"
TARGET_SET="clasp-typescript-eslint-prettier"
CURL_OPT="-s"
FILE_LIST="files.txt"

mkdir -p .vscode src dist

curl -O ${BASE_URL}/${TARGET_SET}/${FILE_LIST}

for file_name in $(cat ${FILE_LIST}); do
  CURL_OPT+=" -o ${file_name} ${BASE_URL}/${TARGET_SET}/${file_name}"
done

curl ${CURL_OPT}

rm ${FILE_LIST}
