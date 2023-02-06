// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(List<String> packagesList) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(List<String> packagesList)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(List<String> packagesList)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingListState value) loading,
    required TResult Function(ErrorListState value) error,
    required TResult Function(SuccessListState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingListState value)? loading,
    TResult? Function(ErrorListState value)? error,
    TResult? Function(SuccessListState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingListState value)? loading,
    TResult Function(ErrorListState value)? error,
    TResult Function(SuccessListState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingListStateCopyWith<$Res> {
  factory _$$LoadingListStateCopyWith(
          _$LoadingListState value, $Res Function(_$LoadingListState) then) =
      __$$LoadingListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingListStateCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$LoadingListState>
    implements _$$LoadingListStateCopyWith<$Res> {
  __$$LoadingListStateCopyWithImpl(
      _$LoadingListState _value, $Res Function(_$LoadingListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingListState implements LoadingListState {
  const _$LoadingListState();

  @override
  String toString() {
    return 'ListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(List<String> packagesList) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(List<String> packagesList)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(List<String> packagesList)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingListState value) loading,
    required TResult Function(ErrorListState value) error,
    required TResult Function(SuccessListState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingListState value)? loading,
    TResult? Function(ErrorListState value)? error,
    TResult? Function(SuccessListState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingListState value)? loading,
    TResult Function(ErrorListState value)? error,
    TResult Function(SuccessListState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingListState implements ListState {
  const factory LoadingListState() = _$LoadingListState;
}

/// @nodoc
abstract class _$$ErrorListStateCopyWith<$Res> {
  factory _$$ErrorListStateCopyWith(
          _$ErrorListState value, $Res Function(_$ErrorListState) then) =
      __$$ErrorListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String string});
}

/// @nodoc
class __$$ErrorListStateCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ErrorListState>
    implements _$$ErrorListStateCopyWith<$Res> {
  __$$ErrorListStateCopyWithImpl(
      _$ErrorListState _value, $Res Function(_$ErrorListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
  }) {
    return _then(_$ErrorListState(
      null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorListState implements ErrorListState {
  const _$ErrorListState(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'ListState.error(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorListState &&
            (identical(other.string, string) || other.string == string));
  }

  @override
  int get hashCode => Object.hash(runtimeType, string);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorListStateCopyWith<_$ErrorListState> get copyWith =>
      __$$ErrorListStateCopyWithImpl<_$ErrorListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(List<String> packagesList) success,
  }) {
    return error(string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(List<String> packagesList)? success,
  }) {
    return error?.call(string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(List<String> packagesList)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingListState value) loading,
    required TResult Function(ErrorListState value) error,
    required TResult Function(SuccessListState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingListState value)? loading,
    TResult? Function(ErrorListState value)? error,
    TResult? Function(SuccessListState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingListState value)? loading,
    TResult Function(ErrorListState value)? error,
    TResult Function(SuccessListState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorListState implements ListState {
  const factory ErrorListState(final String string) = _$ErrorListState;

  String get string;
  @JsonKey(ignore: true)
  _$$ErrorListStateCopyWith<_$ErrorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessListStateCopyWith<$Res> {
  factory _$$SuccessListStateCopyWith(
          _$SuccessListState value, $Res Function(_$SuccessListState) then) =
      __$$SuccessListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> packagesList});
}

/// @nodoc
class __$$SuccessListStateCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$SuccessListState>
    implements _$$SuccessListStateCopyWith<$Res> {
  __$$SuccessListStateCopyWithImpl(
      _$SuccessListState _value, $Res Function(_$SuccessListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packagesList = null,
  }) {
    return _then(_$SuccessListState(
      null == packagesList
          ? _value._packagesList
          : packagesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SuccessListState implements SuccessListState {
  const _$SuccessListState(final List<String> packagesList)
      : _packagesList = packagesList;

  final List<String> _packagesList;
  @override
  List<String> get packagesList {
    if (_packagesList is EqualUnmodifiableListView) return _packagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packagesList);
  }

  @override
  String toString() {
    return 'ListState.success(packagesList: $packagesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessListState &&
            const DeepCollectionEquality()
                .equals(other._packagesList, _packagesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_packagesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessListStateCopyWith<_$SuccessListState> get copyWith =>
      __$$SuccessListStateCopyWithImpl<_$SuccessListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(List<String> packagesList) success,
  }) {
    return success(packagesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(List<String> packagesList)? success,
  }) {
    return success?.call(packagesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(List<String> packagesList)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(packagesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingListState value) loading,
    required TResult Function(ErrorListState value) error,
    required TResult Function(SuccessListState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingListState value)? loading,
    TResult? Function(ErrorListState value)? error,
    TResult? Function(SuccessListState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingListState value)? loading,
    TResult Function(ErrorListState value)? error,
    TResult Function(SuccessListState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessListState implements ListState {
  const factory SuccessListState(final List<String> packagesList) =
      _$SuccessListState;

  List<String> get packagesList;
  @JsonKey(ignore: true)
  _$$SuccessListStateCopyWith<_$SuccessListState> get copyWith =>
      throw _privateConstructorUsedError;
}
