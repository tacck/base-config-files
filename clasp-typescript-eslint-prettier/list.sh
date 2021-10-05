#!/bin/bash

IGNORE_FILES=("README.md" "download.sh" "list.sh")
FILE_LIST="files.txt"

echo -n "" > ${FILE_LIST}

for file_name in $(find . -type f); do
  echo ${IGNORE_FILES[@]} | xargs -n 1 | grep -E "^$(basename ${file_name})$" > /dev/null
  if [ $? -eq 0 ]; then
    continue
  fi

  f=$(echo ${file_name} | sed 's/^\.\///')
  echo $f >> ${FILE_LIST}
done
