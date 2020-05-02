#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$(cd -P -- $(dirname -- $0) && pwd -P)

IMAGE=js-reversing-workbench
cd $SCRIPT_DIR/..

docker build \
    --tag ${IMAGE}:latest \
    .
