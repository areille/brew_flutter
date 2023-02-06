import 'dart:async';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewCommandsRepositoryProvider =
    Provider((_) => BrewCommandsRepository());

class BrewCommandsRepository {
  static const kBrewExecutable = 'brew';

  late Stream<String> stdout;
  late Process process;

  Future<void> launch(List<String> args) async {
    process = await Process.start(kBrewExecutable, args);
    stdout = process.stdout.map(String.fromCharCodes);
  }

  void kill() {
    process.kill();
  }
}
