import 'dart:io';

import 'package:brew_flutter/constants/constants.dart';
import 'package:brew_flutter/exceptions/exceptions.dart';
import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:brew_flutter/utils/process.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<BrewException, PackageInfo> brewInfoTE(String package) =>
    startProcessTask([Constants.brewInfoCmd, package])
        .flatMap(processStdoutTE)
        .map(PackageInfo.fromRaw); // IMPURE

TaskEither<BrewException, String> processStdoutTE(Process process) =>
    TaskEither.tryCatch(
      () => process.stdout.map(String.fromCharCodes).join('\n'),
      (err, __) => ProcessStdoutReadingException(err),
    );
