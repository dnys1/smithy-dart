#!/bin/bash
set -e

if [[ ! -d models ]]; then
    echo "Must be run from goldens/ root" >&2
    exit 1
fi

TMP=$(mktemp -d)
PROTOCOLS="awsJson1_0 awsJson1_1 restJson1 restXml restXmlWithNamespace"

pushd $TMP
git clone --depth=1 https://github.com/awslabs/smithy.git
popd

for PROTOCOL in $PROTOCOLS; do
    DIR=models/$PROTOCOL
    rm -rf $DIR
    mkdir -p $DIR
    cp -R $TMP/smithy/smithy-aws-protocol-tests/model/$PROTOCOL/* $DIR
done

# Shared types
cp $TMP/smithy/smithy-aws-protocol-tests/model/aws-config.smithy models/shared/
cp $TMP/smithy/smithy-aws-protocol-tests/model/shared-types.smithy models/shared/
