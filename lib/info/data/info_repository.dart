import 'dart:io';

import 'package:brew_flutter/info/model/package_info.dart';

Future<PackageInfo> runBrewInfo(String package) async {
  final process = await Process.start('brew', ['info', package]);
  return PackageInfo.fromRaw(
    await process.stdout.map(String.fromCharCodes).join('\n'),
  );
}
