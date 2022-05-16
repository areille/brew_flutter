import 'package:brew_flutter/cleanup/presenter/cleanup.dart';
import 'package:brew_flutter/list/presenter/list.dart';
import 'package:brew_flutter/upgrade/presenter/upgrade.dart';
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
    UpgradeView(),
  ),
  cleanup(
    CupertinoIcons.delete,
    'Cleanup',
    CleanupView(),
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
