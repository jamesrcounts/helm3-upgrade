#!/usr/bin/env bash
set -euox pipefail

RELEASES=$(helm2 list -q)
for RELEASE in ${RELEASES}; do
    helm3 2to3 convert --delete-v2-releases ${RELEASE}
done

helm3 list -A
helm2 list
helm3 2to3 cleanup --skip-confirmation