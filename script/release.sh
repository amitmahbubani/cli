#!/bin/bash

# This fetches the data that was filled out in the previous block
# step and outputs the values

set -eu

echo "+++ :construction:  Installing 'svu' tool"
curl -sfL https://install.goreleaser.com/github.com/caarlos0/svu.sh | bash -s -- -b .


RELEASE_VERSION=$(svu minor)


echo "+++ :boom: Bumping to version $RELEASE_VERSION"

echo "✅"
