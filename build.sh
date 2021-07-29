#!/usr/bin/env bash

IMAGE=continuumio/anaconda3
SMIMAGE=sm/${IMAGE}
VERSION=${1:-2021.05}


docker build \
  --build-arg image_full_name=${IMAGE}:${VERSION} \
  --build-arg cache_date="$(date)" \
  -t "${SMIMAGE}:${VERSION}" .
