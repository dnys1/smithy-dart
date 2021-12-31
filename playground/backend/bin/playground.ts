#!/usr/bin/env node
import "source-map-support/register";
import * as cdk from "aws-cdk-lib";
import { PlaygroundStack } from "../lib/playground-stack";

const app = new cdk.App();
new PlaygroundStack(app, "PlaygroundStack", {
  env: {
    region: "us-west-2",
  },
});
