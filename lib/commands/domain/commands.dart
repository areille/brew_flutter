import 'package:flutter/cupertino.dart';

enum Commands {
  upgrade(CupertinoIcons.arrow_up_circle),
  cleanup(CupertinoIcons.trash_circle),
  list(CupertinoIcons.line_horizontal_3_decrease_circle),
  doctor(CupertinoIcons.heart_circle),
  help(CupertinoIcons.question_circle);

  const Commands(this.icon);

  final IconData icon;
}
