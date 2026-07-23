import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart' as path;
import 'package:yaml_edit/yaml_edit.dart';

enum Increment { major, minor, patch }

class UpdatePackageVersionsCommand extends Command<void> {
  UpdatePackageVersionsCommand() {
    argParser.addMultiOption(
      'packages',
      abbr: 'p',
      defaultsTo: [],
      help: 'One or more package names.',
      // allowed: ['emr_one_builders','emr_one_core']
    );

    argParser.addOption(
      'comment',
      abbr: 'c',
      defaultsTo: 'TODO',
      help: 'An optional comment for the changelog(s).',
    );

    argParser.addOption(
      'increment',
      abbr: 'i',
      defaultsTo: 'minor',
      allowed: Increment.values
          .map((e) => e.toString().replaceAll('Increment.', ''))
          .toList(),
      help: 'The part of the version number to increment.',
    );
  }

  @override
  final name = 'update-package-versions';

  @override
  final description = 'Update package versions. (Alias: upv)';

  @override
  List<String> get aliases => const ['upv'];

  List<String> get packages =>
      (argResults!['packages'] as List<String>).map((x) => x.trim()).toList();

  String get comment {
    final value = argResults!['comment'] as String;

    return value.isEmpty ? 'TODO' : value;
  }

  Increment get increment => Increment.values.firstWhere(
        (e) => e.toString() == 'Increment.${argResults!['increment']}',
      );

  String get root => Directory.current.path;

  final Map<String, YamlEditor> _pubspecs = {};

  @override
  Future<void> run() async {
    if (packages.isEmpty) {
      print('No packages specified. Use the --packages option.');
      return;
    }

    // Increment version numbers and update changelogs.
    for (final package in packages) {
      print('Updating package: $package');

      final yamlFile =
          File(path.join(root, 'packages', package, 'pubspec.yaml'));

      if (!yamlFile.existsSync()) {
        print('$yamlFile not found.');
        continue;
      }

      // Update the version in the pubspec.yaml file.
      final yaml = await yamlFile.readAsString();

      final doc = YamlEditor(yaml);

      final versionParts = doc.parseAt(['version']).toString().split('.');

      if (increment == Increment.major) {
        versionParts[0] = (int.parse(versionParts[0]) + 1).toString();
        versionParts[1] = '0';
        versionParts[2] = '0';
      } else if (increment == Increment.minor) {
        versionParts[1] = (int.parse(versionParts[1]) + 1).toString();
        versionParts[2] = '0';
      } else if (increment == Increment.patch) {
        versionParts[2] = (int.parse(versionParts[2]) + 1).toString();
      }

      final newVersion = versionParts.join('.');

      doc.update(['version'], newVersion);

      _pubspecs[package] = doc;

      // Add a comment to the CHANGELOG.md file.
      final changelogFile =
          File(path.join(root, 'packages', package, 'CHANGELOG.md'));

      final existingChangelog =
          changelogFile.existsSync() ? await changelogFile.readAsString() : '';
      await changelogFile.writeAsString('''
## $newVersion

- $comment

$existingChangelog''');
    }

    // Update package dependencies.
    final versions = {
      for (final key in _pubspecs.keys)
        key: _pubspecs[key]!.parseAt(['version']).toString(),
    };

    for (final package in packages) {
      final doc = _pubspecs[package]!;

      for (final key in versions.keys) {
        try {
          // Try to read the path to make sure it exists.
          // If not an exception is thrown.
          final _ = doc.parseAt(['dependencies', key, 'version']);

          doc.update(['dependencies', key, 'version'], '^${versions[key]}');
        } catch (e) {
          continue;
        }
      }
    }

    // Write pubspec files.
    for (final package in packages) {
      final yamlFile =
          File(path.join(root, 'packages', package, 'pubspec.yaml'));

      final doc = _pubspecs[package]!;

      await yamlFile.writeAsString(doc.toString());
    }
  }
}
