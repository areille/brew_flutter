import 'package:flutter/cupertino.dart';

enum Commands {
  upgrade(CupertinoIcons.arrow_up_circle, ['upgrade']),
  cleanup(CupertinoIcons.trash_circle, ['cleanup']),
  list(CupertinoIcons.line_horizontal_3_decrease_circle, ['list']),
  doctor(CupertinoIcons.heart_circle, ['doctor']),
  version(CupertinoIcons.info_circle, ['--version']),
  help(CupertinoIcons.question_circle, ['help']);

  const Commands(this.icon, this.args);

  final IconData icon;
  final List<String> args;
}
