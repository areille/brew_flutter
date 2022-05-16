import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleanup_state.freezed.dart';

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false,
  toStringOverride: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(when: true, maybeWhen: true, whenOrNull: false),
)
class CleanupState with _$CleanupState {
  const factory CleanupState.ready() = Ready;
  const factory CleanupState.running(String data) = Running;
  const factory CleanupState.error(Object error, {StackTrace? stackTrace}) =
      Error;
  const factory CleanupState.done() = Done;
}
