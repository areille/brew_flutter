abstract class BrewException {
  String get message;
}

class ProcessLaunchException implements BrewException {
  ProcessLaunchException(this.args, this.error);

  final List<String> args;
  final Object error;

  @override
  String get message => 'Cannot launch brew with args $args : $error';
}

class ProcessStdoutReadingException implements BrewException {
  ProcessStdoutReadingException(this.error);

  final Object error;

  @override
  String get message => 'Cannot parse process stdout : $error';
}

class ProcessStdoutLastException implements BrewException {
  ProcessStdoutLastException(this.error);

  final Object error;

  @override
  String get message => 'Cannot read last from stdout : $error';
}

class ProcessStdoutOnDoneException implements BrewException {
  ProcessStdoutOnDoneException(this.error);

  final Object error;

  @override
  String get message => 'Cannot wait for stdout to complete : $error';
}
