import 'dart:io';

import 'package:build_cli_annotations/build_cli_annotations.dart';
import 'package:path/path.dart' as path;

part 'config.g.dart';

String get parserUsage =>
    _$populateCodegenConfigParser(ArgParser(usageLineLength: 80)).usage;

@CliOptions()
class CodegenConfig {
  const CodegenConfig({
    required this.output,
    this.inputFile,
    this.connect,
  });

  @CliOption(
    abbr: 'o',
    defaultsTo: '.',
    help: 'The directory to store generated files. '
        'Defaults to the current directory.',
  )
  final String output;

  @CliOption(abbr: 'f', help: 'The input model JSON file.')
  final String? inputFile;

  @CliOption(abbr: 'c', help: 'Address of gRPC server to connect to.')
  final String? connect;
}

extension ConfigOptions on CodegenConfig {
  /// The connect URI, if available.
  Uri? get connectUri => connect == null ? null : Uri.parse(connect!);

  /// The output directory as a file URI.
  Uri get outputUri => path.toUri(output);

  /// The output directory.
  Directory get outputDir => Directory.fromUri(outputUri);
}
