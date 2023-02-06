import 'dart:io';

import 'package:rxdart/rxdart.dart';

Future<List<String>> runBrewList() async {
  final process = await Process.start('brew', ['list']);
  return String.fromCharCodes(await process.stdout.last).split('\n');
}

Future<void> runBrewUninstall(String package) async {
  final process = await Process.start('brew', ['uninstall', package]);
  process.stdout.doOnDone(() {
    return;
  });
}
