import 'package:brew_flutter/features/commands/presentation/commands.dart';
import 'package:brew_flutter/features/list/presentation/list.dart';
import 'package:flutter/cupertino.dart';

enum Tabs {
  packageList(
    CupertinoIcons.list_dash,
    'Installed packages',
    PackageListPage(),
  ),
  commands(
    CupertinoIcons.play,
    'Commands',
    CommandsView(),
  ),
  search(
    CupertinoIcons.search,
    'Search packages',
    SizedBox(),
  );

  const Tabs(this.icon, this.title, this.page);

  final IconData icon;
  final String title;
  final Widget page;
}
