import 'package:brew_flutter/list/repository/list_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class PackagesList extends ConsumerWidget {
  const PackagesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packages = ref.watch(packagesListProvider);

    // Set selected package as the first of the list
    ref.listen(packagesListProvider, (previous, next) {
      if ((previous is AsyncLoading && next is AsyncData<List<String>>) ||
          next is AsyncData<List<String>> &&
              !next.value.contains(ref.read(selectedPackageProvider))) {
        ref.read(selectedPackageProvider.notifier).state = next.value.first;
      }
    });
    final selectedPackage = ref.watch(selectedPackageProvider);
    return packages.when(
      data: (packages) {
        return SidebarItems(
          currentIndex: packages.contains(selectedPackage)
              ? packages.indexOf(selectedPackage)
              : 0,
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
