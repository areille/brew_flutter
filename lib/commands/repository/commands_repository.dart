import 'dart:async';
import 'dart:io';

import 'package:brew_flutter/commands/repository/command_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final commandProvider = StateNotifierProvider<CommandNotifier, CommandState>(
  (ref) => CommandNotifier(),
);

class CommandNotifier extends StateNotifier<CommandState> {
  CommandNotifier() : super(const CommandState.ready());

  late StreamSubscription<String> sub;
  late Process process;
  late String output;

  Future<void> launch(List<String> args) async {
    state =
        CommandState.running(output = 'Running brew ${args.join(' ')}...\n\n');
    process = await Process.start('brew', args);
    sub = process.stdout.map(String.fromCharCodes).doOnData((event) {
      output += event;
      state = CommandState.running(output);
    }).doOnError((e, s) {
      state = CommandState.error(e, stackTrace: s);
    }).doOnDone(() {
      state = CommandState.done('$output\nDone.');
    }).listen(null);
  }

  void cancel() {
    process.kill();
    sub.cancel();
    state = CommandState.done('$output\nCancelled.');
  }

  void clear() {
    output = '';
    state = const CommandState.ready();
  }

  @override
  void dispose() {
    sub.cancel();
    process.kill();
    super.dispose();
  }
}
