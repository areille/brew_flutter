import 'package:brew_flutter/home/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

final _selectedTabProvider = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(_selectedTabProvider);
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        builder: (_, controller) => SidebarItems(
          currentIndex: selectedTab,
          onChanged: (i) => ref.read(_selectedTabProvider.notifier).state = i,
          scrollController: controller,
          items: [
            for (final tab in Tabs.values)
              SidebarItem(label: Text(tab.title), leading: MacosIcon(tab.icon))
          ],
        ),
      ),
      child: IndexedStack(
        index: selectedTab,
        children: Tabs.values.map((t) => t.page).toList(),
      ),
    );
  }
}
