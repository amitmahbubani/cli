#!/bin/bash

set -eu


WORKDIR=$(pwd)
SVU_BIN="${WORKDIR}/svu"

echo "+++ :construction:  Installing 'svu' tool"
curl -sfL https://install.goreleaser.com/github.com/caarlos0/svu.sh | bash -s -- -b $WORKDIR

RELEASE_VERSION=$($SVU_BIN patch)

echo "+++ :boom: Bumping to version $RELEASE_VERSION"

git tag "$RELEASE_VERSION"
git push --tags

echo "✅"
