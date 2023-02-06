import 'package:brew_flutter/info/state/info_provider.dart';
import 'package:brew_flutter/list/presentation/widgets/package_info_screen.dart';
import 'package:brew_flutter/list/state/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      data: (info) => PackageInfoScreen(
        packageInfo: info,
        onUninstall: () =>
            ref.read(packagesListProvider.notifier).uninstallPackage(info.name),
      ),
      error: (err, _) => Center(child: Text(err.toString())),
      loading: () => const Center(child: ProgressCircle()),
    );
  }
}
