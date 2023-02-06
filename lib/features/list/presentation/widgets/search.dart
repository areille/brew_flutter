import 'package:brew_flutter/features/list/state/list_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class Search extends HookConsumerWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchFieldController = useTextEditingController();

    final list = ref.watch(filteredPackageListProvider);
    return list.maybeWhen(
      success: (packages) => MacosSearchField<String>(
        controller: searchFieldController,
        results: packages.map(SearchResultItem.new).toList(),
        onResultSelected: (res) {
          searchFieldController.clear();
          FocusScope.of(context).unfocus();
          ref.read(selectedPackageProvider.notifier).state = res.searchKey;
        },
      ),
      orElse: () => const SizedBox(),
    );
  }
}
