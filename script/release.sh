#!/bin/bash

set -eu


WORKDIR=$(PWD)
SVU_BIN="${WORKDIR}/svu"

echo "+++ :construction:  Installing 'svu' tool"
curl -sfL https://install.goreleaser.com/github.com/caarlos0/svu.sh | bash -s -- -b $WORKDIR


RELEASE_VERSION=$($SVU_BIN minor)


echo "+++ :boom: Bumping to version $RELEASE_VERSION"

echo "✅"
