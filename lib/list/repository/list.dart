import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final searchInputProvider = StateProvider<String>((ref) => '');

final filteredPackageListProvider = FutureProvider<List<String>>((ref) async {
  final search = ref.watch(searchInputProvider);
  final packages = await ref.watch(packagesListProvider.future);
  return packages.where((p) => p.contains(search)).toList();
});

final packagesListProvider =
    StateNotifierProvider<PackagesListNotifier, AsyncValue<List<String>>>(
  (_) => PackagesListNotifier(),
);

class PackagesListNotifier extends StateNotifier<AsyncValue<List<String>>> {
  PackagesListNotifier() : super(const AsyncValue.loading()) {
    _init();
  }

  Future<void> _init() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(runBrewList);
  }

  Future<void> uninstallPackage(String package) async {
    await runBrewUninstall(package);
    state = AsyncValue.data(
      state.value!..removeWhere((element) => element == package),
    );
  }
}

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