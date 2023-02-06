import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_state.freezed.dart';

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false,
  toStringOverride: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(when: true, maybeWhen: true, whenOrNull: false),
)
class CommandState with _$CommandState {
  const factory CommandState.ready() = Ready;
  const factory CommandState.running(String data) = Running;
  const factory CommandState.error(Object error, {StackTrace? stackTrace}) =
      Error;
  const factory CommandState.done(String data) = Done;
}
