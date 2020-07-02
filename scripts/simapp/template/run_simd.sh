#!/bin/sh
set -o errexit -o nounset -o pipefail
command -v shellcheck > /dev/null && shellcheck "$0"

mkdir -p /root/log

simd start --rpc.laddr tcp://0.0.0.0:26657 --trace
