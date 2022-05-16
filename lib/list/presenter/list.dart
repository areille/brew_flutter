import 'package:brew_flutter/info/repository/info.dart';
import 'package:brew_flutter/list/repository/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class PackagesList extends ConsumerWidget {
  const PackagesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packages = ref.watch(packagesListProvider);
    ref.listen(packagesListProvider, (previous, next) {
      if (previous is AsyncLoading && next is AsyncData<List<String>>) {
        ref.read(selectedPackageProvider.notifier).state = next.value.first;
      }
    });
    final selectedPackage = ref.watch(selectedPackageProvider);
    return packages.when(
      data: (packages) {
        return SidebarItems(
          currentIndex: packages.indexOf(selectedPackage),
          onChanged: (i) {
            ref.read(selectedPackageProvider.notifier).state = packages[i];
          },
          items: [
            for (final package in packages) SidebarItem(label: Text(package))
          ],
        );
      },
      error: (err, _) => Center(child: Text(err.toString())),
      loading: () => const Center(child: ProgressCircle()),
    );
  }
}
