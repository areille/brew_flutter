import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class CommandOutput extends StatelessWidget {
  const CommandOutput({
    required this.data,
    super.key,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: MacosScrollbar(
        child: Container(
          padding: const EdgeInsets.all(8),
          color: MacosColors.alternatingContentBackgroundColor,
          child: ListView.builder(
            itemCount: data.split('\n').length,
            itemBuilder: (ctx, i) => Text(
              data.split('\n')[i],
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'SourceCodePro',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
