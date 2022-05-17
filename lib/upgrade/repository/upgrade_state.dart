import 'package:freezed_annotation/freezed_annotation.dart';

part 'upgrade_state.freezed.dart';

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false,
  toStringOverride: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(when: true, maybeWhen: true, whenOrNull: false),
)
class UpgradeState with _$UpgradeState {
  const factory UpgradeState.ready() = Ready;
  const factory UpgradeState.running(String data) = Running;
  const factory UpgradeState.error(Object error, {StackTrace? stackTrace}) =
      Error;
  const factory UpgradeState.done(String data) = Done;
}
