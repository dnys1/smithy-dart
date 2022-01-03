# Smithy Dart

> **Note**: This is NOT an official AWS product. It is mostly a technical proof-of-concept at the moment.

Code generator and runtime packages for Smithy models in pure Dart. Check out the [Smithy Playground](https://smithy-playground.dillonnys.com/) to start exploring the code generator!

| Folder | Description |
| ------ | ----------- |
| **[codegen](codegen/)** | Smithy codegen plugin, written in Kotlin |
| **[packages](packages/)** | Dart packages |
| [smithy](packages/smithy/) | Smithy Dart runtime |
| [smithy_aws](packages/smithy_aws/) | Smithy Dart runtime for AWS clients |
| [smithy_ast](packages/smithy_ast/) | Smithy AST model with shape and trait definitions |
| [smithy_codegen](packages/smithy_codegen/) | Smithy Dart code generator |
| [goldens](packages/goldens/) | Smithy Dart code generator golden files |
| **[playground](playground/)** | Online playground for exploring the Dart code generator |
| [frontend](playground/frontend/) | Playground frontend, written in AngularDart |
| [backend](playground/backend/) | Playground CDK infrastructure |
| [lambda](playground/lambda/) | Playground Lambda handler |
| **[protos](protos/)** | Interface definition for Kotlin<->Dart communication |

## Overview

Smithy is a protocol-agnostic language for defining services and SDKs. The Dart code generator is a plugin to the Smithy build system, which generates client SDKs from Smithy models. 

Although the primary method for building Smithy models is via the Gradle build system, Smithy models can be directly sent to the Dart code generator in JSON AST form. This AST can be obtained using the Smithy CLI, for example, or written by hand.
