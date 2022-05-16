import 'package:brew_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

void main() => runApp(const ProviderScope(child: FlutterBrew()));

class FlutterBrew extends StatelessWidget {
  const FlutterBrew({super.key});

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterBrew',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}
