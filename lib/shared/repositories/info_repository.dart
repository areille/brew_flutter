import 'dart:io';

import 'package:brew_flutter/list/domain/package_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final packageInfoProvider = FutureProvider.family<PackageInfo, String>(
  (_, package) => runBrewInfo(package),
);

Future<PackageInfo> runBrewInfo(String package) async {
  final process = await Process.start('brew', ['info', package]);
  return PackageInfo.fromRaw(
    await process.stdout.map(String.fromCharCodes).join('\n'),
  );
}
