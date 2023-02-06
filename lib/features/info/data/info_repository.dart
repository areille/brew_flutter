import 'dart:io';

import 'package:brew_flutter/constants/brew_exe.dart';
import 'package:brew_flutter/features/info/model/package_info.dart';

Future<PackageInfo> runBrewInfo(String package) async {
  final process = await Process.start(kBrewExecutable, ['info', package]);
  return PackageInfo.fromRaw(
    await process.stdout.map(String.fromCharCodes).join('\n'),
  );
}
