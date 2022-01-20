// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

CodegenConfig _$parseCodegenConfigResult(ArgResults result) => CodegenConfig(
      output: result['output'] as String,
      inputFile: result['input-file'] as String?,
      server: result['server'] as bool,
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
    'server',
    abbr: 's',
    help: 'Starts a gRPC server for accepting commands.',
  );

final _$parserForCodegenConfig = _$populateCodegenConfigParser(ArgParser());

CodegenConfig parseCodegenConfig(List<String> args) {
  final result = _$parserForCodegenConfig.parse(args);
  return _$parseCodegenConfigResult(result);
}
