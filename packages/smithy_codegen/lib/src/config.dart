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
    required this.server,
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

  @CliOption(
    abbr: 's',
    defaultsTo: false,
    help: 'Starts a gRPC server for accepting commands.',
  )
  final bool server;
}

extension ConfigOptions on CodegenConfig {
  /// The output directory as a file URI.
  Uri get outputUri => path.toUri(output);
}
