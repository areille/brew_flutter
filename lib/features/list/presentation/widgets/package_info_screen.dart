import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:timeago/timeago.dart' as timeago;

class PackageInfoScreen extends StatelessWidget {
  const PackageInfoScreen({
    required this.packageInfo,
    required this.onUninstall,
    super.key,
  });

  final PackageInfo packageInfo;
  final VoidCallback onUninstall;

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      toolBar: ToolBar(
        title: Text(packageInfo.name),
        titleWidth: 100,
        actions: [
          ToolBarIconButton(
            icon: const MacosIcon(
              CupertinoIcons.delete,
            ),
            onPressed: () {
              showMacosAlertDialog<void>(
                context: context,
                builder: (_) => MacosAlertDialog(
                  appIcon: const SizedBox(
                    height: 56,
                    width: 56,
                    child: FlutterLogo(),
                  ),
                  title: const Text('Warning'),
                  message: Text(
                    'Are you sure you want to uninstall ${packageInfo.name}?',
                  ),
                  primaryButton: PushButton(
                    controlSize: ControlSize.large,
                    onPressed: () {
                      Navigator.of(context).pop();
                      onUninstall();
                    },
                    color: CupertinoColors.destructiveRed,
                    child: const Text('Uninstall'),
                  ),
                  secondaryButton: PushButton(
                    controlSize: ControlSize.large,
                    secondary: true,
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Cancel'),
                  ),
                ),
              );
            },
            label: 'Uninstall',
            showLabel: true,
            tooltipMessage: 'Uninstall ${packageInfo.name}',
          ),
        ],
      ),
      children: [
        ContentArea(
          builder: (_, __) => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Version:'),
                    Text(packageInfo.version),
                  ],
                ),
                const Divider(),
                const Text('Description:'),
                const SizedBox(height: 8),
                Text(packageInfo.description),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Url:'),
                    Linkable(text: packageInfo.url),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Location:'),
                    Text(packageInfo.location),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Installed'),
                    Text(timeago.format(packageInfo.installationDate)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
