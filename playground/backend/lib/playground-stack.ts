import {
  CfnOutput,
  Duration,
  IgnoreMode,
  RemovalPolicy,
  Stack,
  StackProps,
} from "aws-cdk-lib";
import { LambdaRestApi } from "aws-cdk-lib/aws-apigateway";
import {
  Distribution,
  EdgeLambda,
  experimental,
  LambdaEdgeEventType,
  OriginAccessIdentity,
  SecurityPolicyProtocol,
  ViewerProtocolPolicy,
} from "aws-cdk-lib/aws-cloudfront";
import { S3Origin } from "aws-cdk-lib/aws-cloudfront-origins";
import { Code, Function, Handler, Runtime } from "aws-cdk-lib/aws-lambda";
import {
  BlockPublicAccess,
  Bucket,
  BucketAccessControl,
} from "aws-cdk-lib/aws-s3";
import { Construct } from "constructs";
import * as fs from "fs-extra";
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
    });

    const websiteBucket = new Bucket(this, "WebsiteBucket", {
      bucketName: "smithy-playground-web",
      autoDeleteObjects: true,
      removalPolicy: RemovalPolicy.DESTROY,
      accessControl: BucketAccessControl.PRIVATE,
      blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
    });

    const originAccessId = new OriginAccessIdentity(
      this,
      "OriginAccessIdentity"
    );

    websiteBucket.grantRead(originAccessId);

    // Create an edge lambda which can rewrite directory listings to `index.html`
    const rewriteFunction = new experimental.EdgeFunction(
      this,
      "RewriteFunction",
      {
        runtime: Runtime.NODEJS_12_X,
        code: Code.fromInline(
          fs.readFileSync("lib/rewrite.js", {
            encoding: "utf8",
          })
        ),
        handler: "rewrite.handler",
      }
    );

    const edgeLambdas: EdgeLambda[] = [
      {
        functionVersion: rewriteFunction,
        eventType: LambdaEdgeEventType.ORIGIN_REQUEST,
      },
    ];

    const distribution = new Distribution(this, "WebsiteDistribution", {
      enableIpv6: true,
      minimumProtocolVersion: SecurityPolicyProtocol.TLS_V1_2_2021,
      defaultBehavior: {
        origin: new S3Origin(websiteBucket, {
          originAccessIdentity: originAccessId,
        }),
        viewerProtocolPolicy: ViewerProtocolPolicy.REDIRECT_TO_HTTPS,
        edgeLambdas,
      },
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
