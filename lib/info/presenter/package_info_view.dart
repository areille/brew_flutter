import 'package:brew_flutter/info/presenter/package_info_screen.dart';
import 'package:brew_flutter/info/repository/info.dart';
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
      data: (info) => PackageInfoScreen(packageInfo: info),
      error: (err, _) => Center(child: Text(err.toString())),
      loading: () => const Center(child: ProgressCircle()),
    );
  }
}
