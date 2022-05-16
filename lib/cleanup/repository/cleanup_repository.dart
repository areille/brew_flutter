import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final cleanupProvider =
    StateNotifierProvider<CleanupNotifier, AsyncValue<String?>>(
  (ref) => CleanupNotifier(),
);

class CleanupNotifier extends StateNotifier<AsyncValue<String?>> {
  CleanupNotifier() : super(const AsyncValue.data(null));

  late StreamSubscription<String> sub;
  late Process process;

  Future<void> launch() async {
    state = const AsyncValue.loading();
    process = await Process.start('brew', ['cleanup']);
    sub = process.stdout.map(String.fromCharCodes).doOnData((event) {
      state = AsyncValue.data(event);
    }).doOnError((e, s) {
      state = AsyncValue.error(e, stackTrace: s);
    }).listen(null);
  }

  void cancel() {
    process.kill();
  }

  @override
  void dispose() {
    sub.cancel();
    process.kill();
    super.dispose();
  }
}
