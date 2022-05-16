import 'package:brew_flutter/cleanup/repository/cleanup_repository.dart';
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
          builder: (_, __) => output.when(
            data: (data) => CleanupContent(
              data: data ?? '',
              onStartClicked: () => ref.read(cleanupProvider.notifier).launch(),
              onCancelClicked: () =>
                  ref.read(cleanupProvider.notifier).cancel(),
            ),
            error: (e, _) => Center(child: Text(e.toString())),
            loading: () => const Center(child: ProgressCircle()),
          ),
        ),
      ],
    );
  }
}

class CleanupContent extends StatelessWidget {
  const CleanupContent({
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
          child: const Text('Run brew cleanup'),
        ),
        Text(data),
      ],
    );
  }
}
