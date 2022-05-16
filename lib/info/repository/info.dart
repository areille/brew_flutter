import 'dart:io';

import 'package:brew_flutter/info/domain/package_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedPackageProvider = StateProvider<String>((ref) => '');

final packageInfoProvider = FutureProvider.family<PackageInfo, String>(
  (_, package) => runBrewInfo(package),
);

Future<PackageInfo> runBrewInfo(String package) async {
  final process = await Process.start('brew', ['info', package]);
  return PackageInfo.fromRaw(
    await process.stdout.map(String.fromCharCodes).join('\n'),
  );
}

class PackageNotifier extends StateNotifier<AsyncValue<PackageInfo>> {
  PackageNotifier() : super(const AsyncValue.loading());

  Future<void> get(String packageName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => runBrewInfo(packageName));
  }
}
