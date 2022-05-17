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
            icon: const MacosIcon(CupertinoIcons.list_dash),
            tooltipMessage: 'Run brew list',
            onPressed: commandState is Ready
                ? () => ref.read(commandProvider.notifier).launch(['list'])
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

class CommandOutput extends StatelessWidget {
  const CommandOutput({
    super.key,
    required this.data,
    required this.controller,
  });

  final String data;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        ref.listen(commandProvider, (prev, next) {
          if (next is Running || next is Done) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              controller.jumpTo(controller.position.maxScrollExtent);
            });
          }
        });
        return Padding(
          padding: const EdgeInsets.all(24),
          child: MacosScrollbar(
            controller: controller,
            child: Container(
              padding: const EdgeInsets.all(8),
              color: MacosColors.alternatingContentBackgroundColor,
              child: ListView.builder(
                controller: controller,
                itemCount: data.split('\n').length,
                itemBuilder: (ctx, i) => Text(data.split('\n')[i]),
              ),
            ),
          ),
        );
      },
    );
  }
}
