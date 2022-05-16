import 'package:brew_flutter/list/repository/list_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  late final searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(filteredPackageListProvider);
    return list.maybeWhen(
      data: (packages) => MacosSearchField<String>(
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
