#!/usr/bin/env bash

CWD=$(pwd)
ARGS="-d -h $(hostname -f)"
ARGS="-u $(id -u):$(id -g)"
ARGS=""
IMAGE=sm/continuumio/anaconda3:2021.05
SOURCE=${CWD}

POSITIONAL=()
while [[ $# -gt 0 ]]; do
key="$1"
case $key in
  -s|--source)
  SOURCE="$2"
  shift
  shift
  ;;
  -i|--image)
  SOURCE="$2"
  shift
  shift
  ;;
  -h|--help)
  help
  exit
  ;;
esac
done
set -- "${POSITIONAL[@]}"

echo "Starting in ${SOURCE}"

CMD="jupyter lab --ip=0.0.0.0 --port=8888 --notebook-dir=source --no-browser --allow-root"
docker run ${ARGS} --name jupyter -p 8888:8888 --mount type=bind,source=${SOURCE},target=/source --rm ${IMAGE} ${CMD}
