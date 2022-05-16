import 'package:brew_flutter/list/presenter/list.dart';
import 'package:flutter/cupertino.dart';

enum Tabs {
  packageList(
    CupertinoIcons.list_dash,
    'Installed packages',
    PackageListPage(),
  ),
  upgrade(
    CupertinoIcons.up_arrow,
    'Upgrade packages',
    SizedBox(),
  ),
  cleanup(
    CupertinoIcons.delete,
    'Cleanup',
    SizedBox(),
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
