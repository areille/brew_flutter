import 'package:brew_flutter/list/presenter/widgets/package_info_view.dart';
import 'package:brew_flutter/list/presenter/widgets/packages_list.dart';
import 'package:brew_flutter/list/presenter/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class PackageListPage extends StatelessWidget {
  const PackageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: const ToolBar(title: Text('Installed packages')),
      children: [
        ResizablePane(
          minWidth: 180,
          resizableSide: ResizableSide.right,
          startWidth: 260,
          builder: (_, controller) => Column(
            children: [
              const SizedBox(height: 24),
              const Search(),
              Expanded(
                child: MacosScrollbar(
                  controller: controller,
                  child: const PackagesList(),
                ),
              ),
            ],
          ),
        ),
        ContentArea(builder: (_, __) => const PackageInfoView()),
      ],
    );
  }
}
