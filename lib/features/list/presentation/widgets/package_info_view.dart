import 'package:brew_flutter/features/info/state/info_provider.dart';
import 'package:brew_flutter/features/list/presentation/widgets/package_info_screen.dart';
import 'package:brew_flutter/features/list/state/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class PackageInfoView extends ConsumerWidget {
  const PackageInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPackage = ref.watch(selectedPackageProvider);
    if (selectedPackage == '') {
      return const Center(child: ProgressCircle());
    }
    final packageInfo = ref.watch(packageInfoProvider(selectedPackage));

    return packageInfo.when(
      success: (info) => PackageInfoScreen(
        packageInfo: info,
        onUninstall: () =>
            ref.read(packagesListProvider.notifier).uninstallPackage(info.name),
      ),
      error: (err) => Center(child: Text(err)),
      loading: () => const Center(child: ProgressCircle()),
    );
  }
}
