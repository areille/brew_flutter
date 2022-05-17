import 'package:brew_flutter/commands/presenter/widgets/command_output.dart';
import 'package:brew_flutter/commands/repository/command_state.dart';
import 'package:brew_flutter/commands/repository/commands_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class CommandsView extends ConsumerWidget {
  const CommandsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commandState = ref.watch(commandProvider);
    return MacosScaffold(
      toolBar: ToolBar(
        title: const Text('Commands'),
        titleWidth: 100,
        actions: [
          if (commandState is Running)
            ToolBarIconButton(
              label: 'Cancel',
              showLabel: true,
              icon: const MacosIcon(CupertinoIcons.stop_circle),
              tooltipMessage: 'Cancel command',
              onPressed: () => ref.read(commandProvider.notifier).cancel(),
            ),
          if (commandState is Done || commandState is Error)
            ToolBarIconButton(
              label: 'Clear',
              showLabel: true,
              icon: const MacosIcon(CupertinoIcons.clear_circled),
              tooltipMessage: 'Clear output',
              onPressed: () => ref.read(commandProvider.notifier).clear(),
            ),
          if (commandState is! Ready) const ToolBarDivider(),
          ToolBarIconButton(
            label: 'Upgrade',
            showLabel: true,
            icon: const MacosIcon(CupertinoIcons.arrow_up_circle),
            tooltipMessage: 'Run brew upgrade',
            onPressed: commandState is Ready
                ? () => ref.read(commandProvider.notifier).launch(['upgrade'])
                : null,
          ),
          ToolBarIconButton(
            label: 'Cleanup',
            showLabel: true,
            icon: const MacosIcon(CupertinoIcons.trash_circle),
            tooltipMessage: 'Run brew cleanup',
            onPressed: commandState is Ready
                ? () => ref.read(commandProvider.notifier).launch(['cleanup'])
                : null,
          ),
          ToolBarIconButton(
            label: 'List',
            showLabel: true,
            icon: const MacosIcon(
              CupertinoIcons.line_horizontal_3_decrease_circle,
            ),
            tooltipMessage: 'Run brew list',
            onPressed: commandState is Ready
                ? () => ref.read(commandProvider.notifier).launch(['list'])
                : null,
          ),
          ToolBarIconButton(
            label: 'Help',
            showLabel: true,
            icon: const MacosIcon(CupertinoIcons.question_circle),
            tooltipMessage: 'Run brew help',
            onPressed: commandState is Ready
                ? () => ref.read(commandProvider.notifier).launch(['help'])
                : null,
          ),
        ],
      ),
      children: [
        ContentArea(
          builder: (_, scrollController) => commandState.when(
            ready: () => const Center(
              child: Text('Launch command from toolbar'),
            ),
            running: (data) => CommandOutput(
              data: data,
              controller: scrollController,
            ),
            done: (data) => CommandOutput(
              data: data,
              controller: scrollController,
            ),
            error: (e, s) => Center(child: Text(e.toString())),
          ),
        ),
      ],
    );
  }
}
