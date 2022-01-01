#!/bin/bash

set -eo pipefail

CDK_OUTPUTS=../backend/outputs.json
DISTRIBUTION_ID=$(cat ${CDK_OUTPUTS} | jq -r .PlaygroundStack.CloudFrontDistributionID)
DISTRIBUTION_URL=$(cat ${CDK_OUTPUTS} | jq -r .PlaygroundStack.CloudFrontUrl)
API_URL=$(cat ${CDK_OUTPUTS} | jq -r .PlaygroundStack.ApiUrl)

cat <<EOF > build.yaml
targets:
  \$default:
    builders:
      build_web_compilers|entrypoint:
        options:
          dart2js_args:
            - --define=DISTRIBUTION_URL=$DISTRIBUTION_URL
            - --define=API_URL=$API_URL
EOF

dart pub get
# TODO: Reactivate when webdev is fixed: https://github.com/dart-lang/webdev/issues/1482
# dart pub global activate webdev 2.7.6
# dart pub global run webdev build
dart run webdev ${1:-build}

aws s3 sync build s3://smithy-playground-web --delete
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths "/*" >/dev/null