import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:emrapps/emrapps.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) {
  // Check we're running in the EMR Apps root by checking the expected path
  // to `emr_one_core` exists.
  final emrOneCorePubspec = File(
    path.join(
      Directory.current.path,
      'packages',
      'emr_one_core',
      'pubspec.yaml',
    ),
  );

  if (!emrOneCorePubspec.existsSync()) {
    print('This command must be run from the root of the EMR Apps project.');
    return;
  }

  // Parse arguments to determine which command to run.
  final cr = CommandRunner<void>(
    'emrapps',
    'A CLI to help with EMR Apps development.\nVersion $packageVersion',
  )..addCommand(UpdatePackageVersionsCommand());

  cr.argParser.addFlag(
    'version',
    negatable: false,
    abbr: 'v',
    callback: (v) {
      if (v) {
        print(packageVersion);
        exit(0);
      }
    },
  );

  cr.run(args).catchError(print);
}
