import 'dart:io';

import 'package:brew_flutter/constants/brew_exe.dart';
import 'package:rxdart/rxdart.dart';

Future<List<String>> runBrewList() async {
  final process = await Process.start(kBrewExecutable, ['list']);
  return String.fromCharCodes(await process.stdout.last).split('\n');
}

Future<void> runBrewUninstall(String package) async {
  final process = await Process.start(kBrewExecutable, ['uninstall', package]);
  process.stdout.doOnDone(() {
    return;
  });
}
