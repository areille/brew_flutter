import 'package:brew_flutter/features/info/data/info_repository.dart';
import 'package:brew_flutter/features/info/state/info_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef PackageName = String;

class PackageInfoState extends StateNotifier<InfoState> {
  PackageInfoState(this.packageName) : super(const InfoState.loading()) {
    init();
  }

  final PackageName packageName;

  Future<Unit> init() async {
    state = const InfoState.loading();
    final infoTask = brewInfoTE(packageName);
    state = (await infoTask.run()).match(
      (error) => InfoState.error(error.message),
      InfoState.success,
    );
    return unit;
  }
}

final packageInfoProvider =
    StateNotifierProviderFamily<PackageInfoState, InfoState, PackageName>(
  (_, packageName) => PackageInfoState(packageName),
);
