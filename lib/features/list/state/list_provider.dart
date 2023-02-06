import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:brew_flutter/features/list/repository/list_repository.dart';
import 'package:brew_flutter/features/list/state/list_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedPackageProvider = StateProvider<String>((ref) => '');
final searchInputProvider = StateProvider<String>((ref) => '');

final filteredPackageListProvider = Provider<ListState>((ref) {
  final search = ref.watch(searchInputProvider);
  final packages = ref.watch(packagesListProvider);

  return packages.when(
    loading: ListState.loading,
    error: ListState.error,
    success: (data) =>
        ListState.success(data.where((p) => p.contains(search)).toList()),
  );
});

final packagesListProvider =
    StateNotifierProvider<PackagesListState, ListState>(
  (ref) => PackagesListState(),
);

class PackagesListState extends StateNotifier<ListState> {
  PackagesListState() : super(const ListState.loading()) {
    init();
  }

  Future<Unit> init() async {
    state = const ListState.loading();
    final listTask = brewListTE();
    state = (await listTask.run()).match(
      (error) => ListState.error(error.message),
      ListState.success,
    );
    return unit;
  }

  Future<Unit> uninstallPackage(PackageName package) async {
    final uninstallTask = brewUninstallTE(package);
    final result = await uninstallTask.run();
    result.match(
      (error) => unit,
      (_) => state = ListState.success(
        (state as SuccessListState).packagesList
          ..removeWhere((element) => element == package),
      ),
    );
    return unit;
  }
}
