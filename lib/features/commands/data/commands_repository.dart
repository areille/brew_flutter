import 'dart:async';
import 'dart:io';

import 'package:brew_flutter/constants/brew_exe.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewCommandsRepositoryProvider =
    Provider((_) => BrewCommandsRepository());

class BrewCommandsRepository {
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
