import 'package:brew_flutter/upgrade/repository/upgrade_repository.dart';
import 'package:brew_flutter/upgrade/repository/upgrade_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class UpgradeView extends ConsumerWidget {
  const UpgradeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final output = ref.watch(upgradeProvider);
    return MacosScaffold(
      toolBar: const ToolBar(title: Text('Upgrade')),
      children: [
        ContentArea(
          builder: (_, __) => UpgradeContent(
            state: output,
            onStartClicked: () => ref.read(upgradeProvider.notifier).launch(),
            onCancelClicked: () => ref.read(upgradeProvider.notifier).cancel(),
            onClearClicked: () => ref.read(upgradeProvider.notifier).clear(),
          ),
        ),
      ],
    );
  }
}

class UpgradeContent extends StatelessWidget {
  const UpgradeContent({
    super.key,
    required this.state,
    required this.onStartClicked,
    required this.onCancelClicked,
    required this.onClearClicked,
  });

  final UpgradeState state;
  final VoidCallback onStartClicked;
  final VoidCallback onCancelClicked;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        state.maybeWhen(
          ready: () => PushButton(
            buttonSize: ButtonSize.large,
            onPressed: onStartClicked,
            child: const Text('Run brew upgrade'),
          ),
          running: (_) => PushButton(
            buttonSize: ButtonSize.large,
            onPressed: onStartClicked,
            child: const Text('Cancel'),
          ),
          orElse: () => PushButton(
            buttonSize: ButtonSize.large,
            onPressed: onClearClicked,
            child: const Text('Clear'),
          ),
        ),
        state.maybeWhen(
          running: (data) => Column(
            children: [
              Text(data),
              const ProgressCircle(),
            ],
          ),
          done: Text.new,
          orElse: () => const SizedBox(),
        ),
      ],
    );
  }
}
