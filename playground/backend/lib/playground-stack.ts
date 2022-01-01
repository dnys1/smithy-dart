import {
  CfnOutput,
  Duration,
  IgnoreMode,
  RemovalPolicy,
  Stack,
  StackProps,
} from "aws-cdk-lib";
import { Cors, LambdaRestApi } from "aws-cdk-lib/aws-apigateway";
import {
  CloudFrontAllowedMethods,
  CloudFrontWebDistribution,
  OriginAccessIdentity,
} from "aws-cdk-lib/aws-cloudfront";
import { Code, Function, Handler, Runtime } from "aws-cdk-lib/aws-lambda";
import {
  BlockPublicAccess,
  Bucket,
} from "aws-cdk-lib/aws-s3";
import { Construct } from "constructs";
import * as path from "path";

export class PlaygroundStack extends Stack {
  constructor(scope: Construct, id: string, props?: StackProps) {
    super(scope, id, props);

    const lambda = new Function(this, "GenerateFunction", {
      runtime: Runtime.FROM_IMAGE,
      handler: Handler.FROM_IMAGE,
      timeout: Duration.seconds(30),

      // Use Dockerfile located in `playground/` directory.
      code: Code.fromAssetImage(path.join(__dirname, "..", ".."), {
        ignoreMode: IgnoreMode.DOCKER,
      }),
    });

    const gateway = new LambdaRestApi(this, "GenerateApi", {
      handler: lambda,
      defaultCorsPreflightOptions: {
        allowOrigins: Cors.ALL_ORIGINS,
      }
    });

    const originAccessId = new OriginAccessIdentity(
      this,
      "OriginAccessIdentity"
    );

    const websiteBucket = new Bucket(this, "WebsiteBucket", {
      bucketName: "smithy-playground-web",
      autoDeleteObjects: true,
      removalPolicy: RemovalPolicy.DESTROY,
      publicReadAccess: false,
      blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
      websiteIndexDocument: 'index.html',
    });

    websiteBucket.grantRead(originAccessId);
    
    const distribution = new CloudFrontWebDistribution(this, "WebsiteDistribution", {
      originConfigs: [
        {
          s3OriginSource: {
            s3BucketSource: websiteBucket,
            originAccessIdentity: originAccessId,
          },
          behaviors: [{
            isDefaultBehavior: true,
            compress: true,
            allowedMethods: CloudFrontAllowedMethods.GET_HEAD_OPTIONS,
          }]
        }
      ],
    });

    new CfnOutput(this, "ApiUrl", {
      value: gateway.url,
    });

    new CfnOutput(this, "CloudFrontUrl", {
      value: distribution.distributionDomainName,
    });

    new CfnOutput(this, "CloudFrontDistributionID", {
      value: distribution.distributionId,
    });
  }
}
