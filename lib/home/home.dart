import 'package:brew_flutter/home/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(
        minWidth: 200,
        builder: (_, controller) => SidebarItems(
          currentIndex: selectedTab,
          onChanged: (i) => setState(() => selectedTab = i),
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
