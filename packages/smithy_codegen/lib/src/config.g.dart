// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

CodegenConfig _$parseCodegenConfigResult(ArgResults result) => CodegenConfig(
      output: result['output'] as String,
      inputFile: result['input-file'] as String?,
      listen: result['listen'] as bool,
      packageName: result['package-name'] as String?,
      server: result['server'] as bool,
      client: result['client'] as bool,
      useBuilders: result['use-builders'] as bool,
    );

ArgParser _$populateCodegenConfigParser(ArgParser parser) => parser
  ..addOption(
    'output',
    abbr: 'o',
    help:
        'The directory to store generated files. Defaults to the current directory.',
    defaultsTo: '.',
  )
  ..addOption(
    'input-file',
    abbr: 'f',
    help: 'The input model JSON file.',
  )
  ..addFlag(
    'listen',
    help: 'Starts a gRPC server for accepting commands.',
  )
  ..addOption(
    'package-name',
    abbr: 'p',
    help: 'The name of the generated package. Defaults to the service name.',
  )
  ..addFlag(
    'server',
    help: 'Whether to generate server-side code.',
  )
  ..addFlag(
    'client',
    help: 'Whether to generate client-side code.',
    defaultsTo: true,
  )
  ..addFlag(
    'use-builders',
    help: 'Whether to use builders for generated constructors.',
    negatable: false,
  );

final _$parserForCodegenConfig = _$populateCodegenConfigParser(ArgParser());

CodegenConfig parseCodegenConfig(List<String> args) {
  final result = _$parserForCodegenConfig.parse(args);
  return _$parseCodegenConfigResult(result);
}
