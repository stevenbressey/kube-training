#!/bin/bash

# create and bootstrap cluster if not already started
kind get clusters | grep dev
if [ "$?" -ne 0 ]; then

  echo "============================================ starting new dev kind cluster =================================="
  kind create cluster --config=./kind-config.yaml
else
  echo "cluster already started"
fi
