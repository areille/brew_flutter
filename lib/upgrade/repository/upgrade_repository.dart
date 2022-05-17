import 'dart:async';
import 'dart:io';

import 'package:brew_flutter/upgrade/repository/upgrade_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final upgradeProvider = StateNotifierProvider<UpgradeNotifier, UpgradeState>(
  (ref) => UpgradeNotifier(),
);

class UpgradeNotifier extends StateNotifier<UpgradeState> {
  UpgradeNotifier() : super(const UpgradeState.ready());

  late StreamSubscription<String> sub;
  late Process process;
  late String output;

  Future<void> launch() async {
    state = UpgradeState.running(output = '');
    process = await Process.start('brew', ['upgrade']);
    sub = process.stdout.map(String.fromCharCodes).doOnData((event) {
      output += event;
      state = UpgradeState.running(output);
    }).doOnError((e, s) {
      state = UpgradeState.error(e, stackTrace: s);
    }).doOnDone(() {
      state = UpgradeState.done(output);
    }).listen(null);
  }

  void cancel() {
    process.kill();
    sub.cancel();
    state = UpgradeState.done(output);
  }

  void clear() {
    output = '';
    state = const UpgradeState.ready();
  }

  @override
  void dispose() {
    sub.cancel();
    process.kill();
    super.dispose();
  }
}
