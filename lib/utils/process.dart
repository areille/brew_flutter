import 'dart:io';

import 'package:brew_flutter/constants/constants.dart';
import 'package:brew_flutter/exceptions/exceptions.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<BrewException, Process> startProcessTask(
  List<String> args,
) =>
    TaskEither.tryCatch(
      () => Process.start(Constants.brewExecutable, args),
      (err, __) => ProcessLaunchException(args, err),
    );
