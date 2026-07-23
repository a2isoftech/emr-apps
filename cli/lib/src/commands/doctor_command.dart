import 'dart:io';

import 'package:args/command_runner.dart';

class DoctorCommand extends Command<void> {
  @override
  final name = 'doctor';

  @override
  final description =
      'Install and show information about the installed tooling.';

  @override
  Future<void> run() async {
    print('Installing Melos...');
    await Process.run('dart', ['pub', 'global', 'activate', 'melos']);
    await Process.run('melos', ['--version']);
    print('');

    print('Installing Mason CLI...');
    await Process.run('dart', ['pub', 'global', 'activate', 'mason_cli']);
    print('');
  }
}
