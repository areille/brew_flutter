import 'package:brew_flutter/features/info/data/info_repository.dart';
import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final packageInfoProvider = FutureProvider.family<PackageInfo, String>(
  (_, package) => runBrewInfo(package),
);
