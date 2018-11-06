#!/bin/sh
set -e

wget ${1} -O docs.json &> /dev/null
node_modules/api-spec-converter/bin/api-spec-converter -f openapi_3 -t swagger_2 -s json docs.json
rm -rf docs.json
