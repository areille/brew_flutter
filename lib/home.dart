import 'package:brew_flutter/info/presenter/package_info_view.dart';
import 'package:brew_flutter/info/repository/info.dart';
import 'package:brew_flutter/list/presenter/list.dart';
import 'package:brew_flutter/list/repository/list.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        top: const Search(),
        builder: (_, __) => const PackagesList(),
      ),
      child: MacosScaffold(
        children: [
          ContentArea(builder: (_, __) => const PackageInfoView()),
        ],
      ),
    );
  }
}

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
