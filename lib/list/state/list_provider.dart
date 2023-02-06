import 'package:brew_flutter/list/repository/list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedPackageProvider = StateProvider<String>((ref) => '');
final searchInputProvider = StateProvider<String>((ref) => '');

final filteredPackageListProvider = FutureProvider<List<String>>((ref) async {
  final search = ref.watch(searchInputProvider);
  final packages = await ref.watch(packagesListProvider.future);
  return packages.where((p) => p.contains(search)).toList();
});

final packagesListProvider =
    AsyncNotifierProvider<PackagesListNotifier, List<String>>(
  PackagesListNotifier.new,
);

class PackagesListNotifier extends AsyncNotifier<List<String>> {
  @override
  Future<List<String>> build() => runBrewList();

  Future<void> uninstallPackage(String package) async {
    await runBrewUninstall(package);
    state = AsyncValue.data(
      state.value!..removeWhere((element) => element == package),
    );
  }
}
