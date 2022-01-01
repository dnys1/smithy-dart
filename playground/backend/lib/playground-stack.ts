import {
  Aws,
  CfnOutput,
  Duration,
  IgnoreMode,
  RemovalPolicy,
  Stack,
  StackProps,
} from "aws-cdk-lib";
import { Cors, LambdaRestApi } from "aws-cdk-lib/aws-apigateway";
import { DnsValidatedCertificate } from "aws-cdk-lib/aws-certificatemanager";
import {
  CloudFrontAllowedMethods,
  CloudFrontWebDistribution,
  OriginAccessIdentity,
  SecurityPolicyProtocol,
  SSLMethod,
  ViewerCertificate,
} from "aws-cdk-lib/aws-cloudfront";
import { Metric } from "aws-cdk-lib/aws-cloudwatch";
import { Code, Function, Handler, Runtime } from "aws-cdk-lib/aws-lambda";
import { ARecord, HostedZone, RecordTarget } from "aws-cdk-lib/aws-route53";
import { CloudFrontTarget } from "aws-cdk-lib/aws-route53-targets";
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

    const zone = HostedZone.fromLookup(this, 'Zone', { domainName: 'dillonnys.com' });
    const siteDomain = 'smithy-playground.dillonnys.com';

    const originAccessId = new OriginAccessIdentity(
      this,
      "OriginAccessIdentity", {
      comment: `OAI for ${id}`
    }
    );

    const certificate = new DnsValidatedCertificate(this, 'SiteCertificate', {
      domainName: siteDomain,
      hostedZone: zone,
      region: 'us-east-1',
    });

    const viewerCertificate = ViewerCertificate.fromAcmCertificate(certificate, {
      sslMethod: SSLMethod.SNI,
      securityPolicy: SecurityPolicyProtocol.TLS_V1_2_2021,
      aliases: [siteDomain]
    });

    const websiteBucket = new Bucket(this, "WebsiteBucket", {
      bucketName: siteDomain,
      autoDeleteObjects: true,
      removalPolicy: RemovalPolicy.DESTROY,
      publicReadAccess: false,
      blockPublicAccess: BlockPublicAccess.BLOCK_ALL,
      websiteIndexDocument: 'index.html',
    });

    websiteBucket.grantRead(originAccessId);

    const distribution = new CloudFrontWebDistribution(this, "WebsiteDistribution", {
      viewerCertificate,
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
    
    new ARecord(this, 'SiteAliasRecord', {
      recordName: siteDomain,
      target: RecordTarget.fromAlias(new CloudFrontTarget(distribution)),
      zone,
    });

    new CfnOutput(this, 'BucketName', {
      value: websiteBucket.bucketName,
    })

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
