import 'package:brew_flutter/info/data/info_repository.dart';
import 'package:brew_flutter/info/model/package_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final packageInfoProvider = FutureProvider.family<PackageInfo, String>(
  (_, package) => runBrewInfo(package),
);
