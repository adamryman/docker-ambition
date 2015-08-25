#!/bin/bash

set -e

if [ "$1" = 'ambition' ]; then
  shift
  go/bin/cmd "$@"
elif [ "$1" = 'godo' ]; then
  go get github.com/adamryman/ambition
  go install github.com/adamryman/ambition/cmd/
else
  "$@"
fi
