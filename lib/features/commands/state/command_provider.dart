import 'dart:async';

import 'package:brew_flutter/features/commands/data/commands_repository.dart';
import 'package:brew_flutter/features/commands/state/command_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final commandProvider = StateNotifierProvider<CommandNotifier, CommandState>(
  (ref) => CommandNotifier(ref.watch(brewCommandsRepositoryProvider)),
);

class CommandNotifier extends StateNotifier<CommandState> {
  CommandNotifier(this.brewCommandsRepository)
      : super(const CommandState.ready());

  final BrewCommandsRepository brewCommandsRepository;

  late StreamSubscription<String> sub;
  late String output;

  Future<void> launch(List<String> args) async {
    state =
        CommandState.running(output = 'Running brew ${args.join(' ')}...\n\n');
    sub = brewCommandsRepository.stdout.doOnData((event) {
      output += event;
      state = CommandState.running(output);
    }).doOnError((e, s) {
      state = CommandState.error(e, stackTrace: s);
    }).doOnDone(() {
      state = CommandState.done('$output\nDone.');
    }).listen(null);
  }

  void cancel() {
    brewCommandsRepository.kill();
    sub.cancel();
    state = CommandState.done('$output\nCancelled.');
  }

  void clear() {
    output = '';
    state = const CommandState.ready();
  }

  @override
  void dispose() {
    brewCommandsRepository.kill();
    super.dispose();
  }
}
