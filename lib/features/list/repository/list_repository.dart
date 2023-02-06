import 'dart:io';

import 'package:brew_flutter/constants/constants.dart';
import 'package:rxdart/rxdart.dart';

Future<List<String>> runBrewList() async {
  final process = await Process.start(Constants.brewExecutable, ['list']);
  return String.fromCharCodes(await process.stdout.last).split('\n');
}

Future<void> runBrewUninstall(String package) async {
  final process =
      await Process.start(Constants.brewExecutable, ['uninstall', package]);
  process.stdout.doOnDone(() {
    return;
  });
}
