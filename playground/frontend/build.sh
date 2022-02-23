#!/bin/bash

set -eo pipefail

CDK_OUTPUTS=../backend/outputs.json
BUCKET_NAME=$(cat ${CDK_OUTPUTS} | jq -r .PlaygroundStack.BucketName)
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
            - --define=API_URL=$API_URL
EOF

dart pub get
dart pub global activate webdev
dart pub global run webdev build -- --delete-conflicting-outputs

aws --profile=personal s3 sync build s3://$BUCKET_NAME --delete
aws --profile=personal cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths "/*" >/dev/null