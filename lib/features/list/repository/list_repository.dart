import 'dart:io';

import 'package:brew_flutter/constants/constants.dart';
import 'package:brew_flutter/exceptions/exceptions.dart';
import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:brew_flutter/utils/process.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<BrewException, Unit> brewUninstallTE(PackageName packageName) =>
    startProcessTask([Constants.brewUninstallCmd, packageName])
        .flatMap(_stdoutDone);

TaskEither<BrewException, Unit> _stdoutDone(Process process) =>
    TaskEither.tryCatch(
      process.stdout.listen(null).asFuture,
      (error, _) => ProcessStdoutOnDoneException(error),
    );

TaskEither<BrewException, List<PackageName>> brewListTE() =>
    startProcessTask([Constants.brewListCmd])
        .flatMap(_lastFromStdoutTE)
        .map(String.fromCharCodes)
        .map(_splitWithNewLines);

TaskEither<BrewException, List<int>> _lastFromStdoutTE(Process process) =>
    TaskEither.tryCatch(
      () => process.stdout.last,
      (error, _) => ProcessStdoutLastException(error),
    );

List<String> _splitWithNewLines(String data) => data.split('\n');
