# Smithy Dart

> **Note**: This is NOT an official AWS product. It is mostly a technical proof-of-concept at the moment.

Code generator and runtime packages for Smithy models in pure Dart.

| Folder | Description |
| ------ | ----------- |
| **[codegen](codegen/)** | Smithy codegen plugin, written in Kotlin. Calls the Dart generator with parsed and validated models. |
| **[example](example/)** | Example of how to define and generate a Dart client for a Smithy model |
| [example/idl](example/idl/) | Example using Smithy IDL |
| [example/ast](example/ast/) | Example using Smithy JSON AST |
| **[packages](packages/)** | Dart packages |
| [packages/smithy](packages/smithy/) | Smithy Dart runtime |
| [packages/smithy_aws](packages/smithy_aws/) | Smithy Dart runtime for AWS clients |
| [packages/smithy_ast](packages/smithy_ast/) | Smithy AST model with shape and trait definitions |
| [packages/smithy_codegen](packages/smithy_codegen/) | Smithy Dart code generator |
| [packages/goldens](packages/goldens/) | Smithy Dart code generator golden files |
| **[playground](playground/)** | Online playground for exploring the Dart code generator |
| **[protos](protos/)** | Protobuf definitions for interface between the Kotlin plugin and the Dart generator |

## Overview

Smithy is a protocol-agnostic language for defining services and SDKs. The Dart code generator is a plugin to the Smithy build system, which generates client SDKs from Smithy models. Although the primary method for building Smithy models is via the Gradle build system, Smithy models can be directly sent using the Dart code generator in JSON AST form. This AST can be obtained using the Smithy CLI, for example, or written by hand. The [example](example/) folder has demonstrations of each approach.
