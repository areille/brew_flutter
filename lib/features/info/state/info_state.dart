import 'package:brew_flutter/features/info/model/package_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_state.freezed.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState.loading() = LoadingInfoState;
  const factory InfoState.error(String string) = ErrorInfoState;
  const factory InfoState.success(PackageInfo info) = SuccessInfoState;
}
