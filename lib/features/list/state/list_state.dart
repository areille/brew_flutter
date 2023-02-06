import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.loading() = LoadingListState;
  const factory ListState.error(String string) = ErrorListState;
  const factory ListState.success(List<String> packagesList) = SuccessListState;
}
