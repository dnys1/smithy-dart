#!/bin/bash

dart pub global activate smithy_codegen
dart pub global run smithy_codegen -f weather.json -o generated