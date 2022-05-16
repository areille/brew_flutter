import 'package:brew_flutter/upgrade/repository/upgrade_repository.dart';
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
          builder: (_, __) => output.when(
            data: (data) => UpgradeContent(
              data: data ?? '',
              onStartClicked: () => ref.read(upgradeProvider.notifier).launch(),
              onCancelClicked: () =>
                  ref.read(upgradeProvider.notifier).cancel(),
            ),
            error: (e, _) => Center(child: Text(e.toString())),
            loading: () => const Center(child: ProgressCircle()),
          ),
        ),
      ],
    );
  }
}

class UpgradeContent extends StatelessWidget {
  const UpgradeContent({
    super.key,
    required this.data,
    required this.onStartClicked,
    required this.onCancelClicked,
  });

  final String data;
  final VoidCallback onStartClicked;
  final VoidCallback onCancelClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PushButton(
          buttonSize: ButtonSize.large,
          onPressed: onStartClicked,
          child: const Text('Run brew upgrade'),
        ),
        Text(data),
      ],
    );
  }
}
