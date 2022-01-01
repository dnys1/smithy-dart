#!/usr/bin/env node
import "source-map-support/register";
import * as cdk from "aws-cdk-lib";
import { PlaygroundStack } from "../lib/playground-stack";

const app = new cdk.App();
new PlaygroundStack(app, "PlaygroundStack", {
  env: {
    account: process.env.CDK_DEFAULT_ACCOUNT,
    region: process.env.CDK_DEFAULT_REGION,
  },
});
