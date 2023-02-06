// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(PackageInfo info) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(PackageInfo info)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(PackageInfo info)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoState value) loading,
    required TResult Function(ErrorInfoState value) error,
    required TResult Function(SuccessInfoState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoState value)? loading,
    TResult? Function(ErrorInfoState value)? error,
    TResult? Function(SuccessInfoState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoState value)? loading,
    TResult Function(ErrorInfoState value)? error,
    TResult Function(SuccessInfoState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoStateCopyWith<$Res> {
  factory $InfoStateCopyWith(InfoState value, $Res Function(InfoState) then) =
      _$InfoStateCopyWithImpl<$Res, InfoState>;
}

/// @nodoc
class _$InfoStateCopyWithImpl<$Res, $Val extends InfoState>
    implements $InfoStateCopyWith<$Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingInfoStateCopyWith<$Res> {
  factory _$$LoadingInfoStateCopyWith(
          _$LoadingInfoState value, $Res Function(_$LoadingInfoState) then) =
      __$$LoadingInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingInfoStateCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$LoadingInfoState>
    implements _$$LoadingInfoStateCopyWith<$Res> {
  __$$LoadingInfoStateCopyWithImpl(
      _$LoadingInfoState _value, $Res Function(_$LoadingInfoState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingInfoState implements LoadingInfoState {
  const _$LoadingInfoState();

  @override
  String toString() {
    return 'InfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingInfoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(PackageInfo info) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(PackageInfo info)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(PackageInfo info)? success,
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
    required TResult Function(LoadingInfoState value) loading,
    required TResult Function(ErrorInfoState value) error,
    required TResult Function(SuccessInfoState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoState value)? loading,
    TResult? Function(ErrorInfoState value)? error,
    TResult? Function(SuccessInfoState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoState value)? loading,
    TResult Function(ErrorInfoState value)? error,
    TResult Function(SuccessInfoState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingInfoState implements InfoState {
  const factory LoadingInfoState() = _$LoadingInfoState;
}

/// @nodoc
abstract class _$$ErrorInfoStateCopyWith<$Res> {
  factory _$$ErrorInfoStateCopyWith(
          _$ErrorInfoState value, $Res Function(_$ErrorInfoState) then) =
      __$$ErrorInfoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String string});
}

/// @nodoc
class __$$ErrorInfoStateCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$ErrorInfoState>
    implements _$$ErrorInfoStateCopyWith<$Res> {
  __$$ErrorInfoStateCopyWithImpl(
      _$ErrorInfoState _value, $Res Function(_$ErrorInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
  }) {
    return _then(_$ErrorInfoState(
      null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorInfoState implements ErrorInfoState {
  const _$ErrorInfoState(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'InfoState.error(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorInfoState &&
            (identical(other.string, string) || other.string == string));
  }

  @override
  int get hashCode => Object.hash(runtimeType, string);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorInfoStateCopyWith<_$ErrorInfoState> get copyWith =>
      __$$ErrorInfoStateCopyWithImpl<_$ErrorInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(PackageInfo info) success,
  }) {
    return error(string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(PackageInfo info)? success,
  }) {
    return error?.call(string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(PackageInfo info)? success,
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
    required TResult Function(LoadingInfoState value) loading,
    required TResult Function(ErrorInfoState value) error,
    required TResult Function(SuccessInfoState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoState value)? loading,
    TResult? Function(ErrorInfoState value)? error,
    TResult? Function(SuccessInfoState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoState value)? loading,
    TResult Function(ErrorInfoState value)? error,
    TResult Function(SuccessInfoState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorInfoState implements InfoState {
  const factory ErrorInfoState(final String string) = _$ErrorInfoState;

  String get string;
  @JsonKey(ignore: true)
  _$$ErrorInfoStateCopyWith<_$ErrorInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessInfoStateCopyWith<$Res> {
  factory _$$SuccessInfoStateCopyWith(
          _$SuccessInfoState value, $Res Function(_$SuccessInfoState) then) =
      __$$SuccessInfoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PackageInfo info});
}

/// @nodoc
class __$$SuccessInfoStateCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$SuccessInfoState>
    implements _$$SuccessInfoStateCopyWith<$Res> {
  __$$SuccessInfoStateCopyWithImpl(
      _$SuccessInfoState _value, $Res Function(_$SuccessInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$SuccessInfoState(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc

class _$SuccessInfoState implements SuccessInfoState {
  const _$SuccessInfoState(this.info);

  @override
  final PackageInfo info;

  @override
  String toString() {
    return 'InfoState.success(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessInfoState &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessInfoStateCopyWith<_$SuccessInfoState> get copyWith =>
      __$$SuccessInfoStateCopyWithImpl<_$SuccessInfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String string) error,
    required TResult Function(PackageInfo info) success,
  }) {
    return success(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String string)? error,
    TResult? Function(PackageInfo info)? success,
  }) {
    return success?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String string)? error,
    TResult Function(PackageInfo info)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoState value) loading,
    required TResult Function(ErrorInfoState value) error,
    required TResult Function(SuccessInfoState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoState value)? loading,
    TResult? Function(ErrorInfoState value)? error,
    TResult? Function(SuccessInfoState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoState value)? loading,
    TResult Function(ErrorInfoState value)? error,
    TResult Function(SuccessInfoState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessInfoState implements InfoState {
  const factory SuccessInfoState(final PackageInfo info) = _$SuccessInfoState;

  PackageInfo get info;
  @JsonKey(ignore: true)
  _$$SuccessInfoStateCopyWith<_$SuccessInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
