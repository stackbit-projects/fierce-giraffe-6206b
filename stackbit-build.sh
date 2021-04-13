#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/6076206b893af00017acceef/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/6076206b893af00017acceef/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/6076206b893af00017acceef/webhook/build/publish > /dev/null
