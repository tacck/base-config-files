#!/bin/sh

BASE_URL="https://raw.githubusercontent.com/tacck/base-config-files/main"
TARGET_SET="cypress-eslint-prettier"
CURL_OPT="-s"

mkdir -p .vscode

curl ${CURL_OPT} \
  -O ${BASE_URL}/${TARGET_SET}/.editorconfig \
  -O ${BASE_URL}/${TARGET_SET}/.eslintrc.js \
  -O ${BASE_URL}/${TARGET_SET}/.prettierrc \
  -O ${BASE_URL}/${TARGET_SET}/jsconfig.json \
  -o .vscode/settings.json ${BASE_URL}/${TARGET_SET}/.vscode/settings.json
