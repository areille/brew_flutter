import 'package:brew_flutter/cleanup/repository/cleanup_repository.dart';
import 'package:brew_flutter/cleanup/repository/cleanup_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class CleanupView extends ConsumerWidget {
  const CleanupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final output = ref.watch(cleanupProvider);
    return MacosScaffold(
      toolBar: const ToolBar(title: Text('Cleanup')),
      children: [
        ContentArea(
          builder: (_, __) => CleanupContent(
            state: output,
            onStartClicked: () => ref.read(cleanupProvider.notifier).launch(),
            onCancelClicked: () => ref.read(cleanupProvider.notifier).cancel(),
            onClearClicked: () => ref.read(cleanupProvider.notifier).clear(),
          ),
        ),
      ],
    );
  }
}

class CleanupContent extends StatelessWidget {
  const CleanupContent({
    super.key,
    required this.state,
    required this.onStartClicked,
    required this.onCancelClicked,
    required this.onClearClicked,
  });

  final CleanupState state;
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
            child: const Text('Run brew cleanup'),
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
          orElse: () => const SizedBox(),
        ),
      ],
    );
  }
}
