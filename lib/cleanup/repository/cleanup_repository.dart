import 'dart:async';
import 'dart:io';

import 'package:brew_flutter/cleanup/repository/cleanup_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final cleanupProvider = StateNotifierProvider<CleanupNotifier, CleanupState>(
  (ref) => CleanupNotifier(),
);

class CleanupNotifier extends StateNotifier<CleanupState> {
  CleanupNotifier() : super(const CleanupState.ready());

  late StreamSubscription<String> sub;
  late Process process;

  Future<void> launch() async {
    state = const CleanupState.running('');
    process = await Process.start('brew', ['cleanup']);
    sub = process.stdout.map(String.fromCharCodes).doOnData((event) {
      state = CleanupState.running(event);
    }).doOnError((e, s) {
      state = CleanupState.error(e, stackTrace: s);
    }).doOnDone(() {
      state = const CleanupState.done();
    }).listen(null);
  }

  void cancel() {
    process.kill();
    sub.cancel();
    state = const CleanupState.done();
  }

  void clear() {
    state = const CleanupState.ready();
  }

  @override
  void dispose() {
    sub.cancel();
    process.kill();
    super.dispose();
  }
}
