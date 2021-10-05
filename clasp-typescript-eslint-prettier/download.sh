#!/bin/bash

BASE_URL="https://raw.githubusercontent.com/tacck/base-config-files/main"
TARGET_SET=$(basename $(pwd))
CURL_OPT="-s"
FILE_LIST="files.txt"

mkdir -p .vscode src dist

curl ${FILE_LIST}

for file_name in $(cat ${FILE_LIST}); do
  CURL_OPT+=" -o ${f} ${BASE_URL}/${TARGET_SET}/${f}"
done

curl ${CURL_OPT}

rm ${FILE_LIST}