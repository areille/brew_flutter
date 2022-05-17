import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class CommandOutput extends StatelessWidget {
  const CommandOutput({
    super.key,
    required this.data,
    required this.controller,
  });

  final String data;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.jumpTo(controller.position.maxScrollExtent);
    });
    return Padding(
      padding: const EdgeInsets.all(24),
      child: MacosScrollbar(
        controller: controller,
        child: Container(
          padding: const EdgeInsets.all(8),
          color: MacosColors.alternatingContentBackgroundColor,
          child: ListView.builder(
            controller: controller,
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
