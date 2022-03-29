import 'package:aws_common/aws_common.dart';
import 'package:pubspec_parse/pubspec_parse.dart' hide Dependency;
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:path/path.dart' as path;

enum DependencyType { aws, smithy }

class Dependency with AWSEquatable<Dependency> {
  const Dependency(this.semver, [this.type]) : isDevDependency = false;

  const Dependency.dev(this.semver, [this.type]) : isDevDependency = true;

  final String semver;
  final DependencyType? type;
  final bool isDevDependency;

  @override
  List<Object?> get props => [semver, type, isDevDependency];
}

/// All dependencies and the current versions.
final dependencyVersions = {
  // Dependencies
  'smithy': Dependency('^0.3.0', DependencyType.smithy),
  'smithy_aws': Dependency('^0.3.0', DependencyType.smithy),
  'smithy_codegen': Dependency('^0.3.0', DependencyType.smithy),
  'aws_common': Dependency('^0.1.0', DependencyType.aws),
  'aws_signature_v4': Dependency('^0.1.0', DependencyType.aws),
  'built_value': Dependency('^8.0.0'),
  'built_collection': Dependency('^5.0.0'),
  'fixnum': Dependency('^1.0.0'),
  'meta': Dependency('^1.7.0'),
  'shelf': Dependency('^1.1.0'),
  'shelf_router': Dependency('^1.1.0'),
  'uuid': Dependency('^3.0.0'),
  'xml': Dependency('^5.3.1'),

  // Dev Dependencies
  'smithy_test': Dependency.dev('^0.3.0', DependencyType.smithy),
  'build_runner': Dependency.dev('^2.0.0'),
  'built_value_generator': Dependency.dev('^8.0.0'),
  'lints': Dependency.dev('^1.0.0'),
  'test': Dependency.dev('^1.16.0'),
};

class PubspecGenerator implements Generator<String> {
  const PubspecGenerator(
    this.pubspec,
    this._dependencies, {
    this.smithyPath,
  });

  final Pubspec pubspec;
  final Iterable<String> _dependencies;
  final String? smithyPath;

  Iterable<String> get dependencies =>
      _dependencies.where((dep) => !dependencyVersions[dep]!.isDevDependency);
  Iterable<String> get devDependencies => dependencyVersions.entries
      .where((entry) => entry.value.isDevDependency)
      .map((entry) => entry.key);

  String dependencyYaml(String name, Dependency dependency) {
    if (dependency.type == DependencyType.smithy && smithyPath != null) {
      return '''
  $name:
    path: ${path.join(smithyPath!, name)}''';
    } else if (dependency.type == DependencyType.smithy ||
        dependency.type == DependencyType.aws) {
      return '''
  $name:
    hosted: https://pub.dillonnys.com
    version: ${dependency.semver}''';
    }
    return '  $name: ${dependency.semver}';
  }

  @override
  String generate() {
    final dependenciesBlock = dependencies
        .map((dep) => dependencyYaml(dep, dependencyVersions[dep]!))
        .join('\n');
    final devDependenciesBlock = devDependencies
        .map((dep) => dependencyYaml(dep, dependencyVersions[dep]!))
        .join('\n');
    String? dependencyOverridesBlock;
    if (smithyPath != null) {
      dependencyOverridesBlock = dependencyVersions.entries
          .where((dep) => dep.value.type == DependencyType.smithy)
          .map((dep) => dependencyYaml(dep.key, dep.value))
          .join('\n');
    }
    return '''
name: ${pubspec.name}
description: ${pubspec.description ?? pubspec.name.groupIntoWords().map((s) => s.capitalized).join(' ') + ' client SDK'}
version: ${pubspec.version?.canonicalizedVersion ?? '0.1.0'}
${smithyPath == null ? pubspec.publishTo != null ? 'publish_to: ${pubspec.publishTo}\n' : '' : 'publish_to: none\n'}${pubspec.homepage != null ? 'homepage: ${pubspec.homepage}\n' : ''}

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
$dependenciesBlock

${dependencyOverridesBlock == null ? '' : 'dependency_overrides:'}
${dependencyOverridesBlock ?? ''}

dev_dependencies:
$devDependenciesBlock
''';
  }
}
