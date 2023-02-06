import 'package:brew_flutter/features/list/state/list_provider.dart';
import 'package:brew_flutter/features/list/state/list_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class PackagesList extends ConsumerWidget {
  const PackagesList({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packages = ref.watch(packagesListProvider);

    // Set selected package as the first of the list
    ref.listen(packagesListProvider, (previous, next) {
      if ((previous is LoadingListState && next is SuccessListState) ||
          next is SuccessListState &&
              !next.packagesList.contains(ref.read(selectedPackageProvider))) {
        ref.read(selectedPackageProvider.notifier).state =
            next.packagesList.first;
      }
    });
    final selectedPackage = ref.watch(selectedPackageProvider);
    return packages.when(
      success: (packages) {
        return SidebarItems(
          scrollController: scrollController,
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
      error: (err) => Center(child: Text(err)),
      loading: () => const Center(child: ProgressCircle()),
    );
  }
}
