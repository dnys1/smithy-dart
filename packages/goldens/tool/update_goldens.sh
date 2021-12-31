#!/bin/bash

# This script uses the Smithy CLI to transform models in `models` to AST, then passes
# the results to the Dart code generator.

set -eo pipefail

for MODEL in models/**/*; do
    docker run --rm -it -v "$PWD/models":/home/models dnys1/smithy:latest ast /home/$MODEL
done