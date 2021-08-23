#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pipenv run pytest
stat=$?
if [[ ${stat} == 0 ]]; then
  . ${SCRIPT_DIR}/env.sh
  docker build \
    --build-arg image_full_name=${SOURCE_IMAGE}:${SOURCE_VERSION} \
    --build-arg cache_date="$(date)" \
    -t "${TARGET_IMAGE}:${TARGET_VERSION}" .
else
  echo "tests failed not building docker"
fi