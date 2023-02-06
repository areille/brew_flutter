// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommandState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(String data) running,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(String data) done,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(String data)? running,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(String data)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$Ready implements Ready {
  const _$Ready();

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(String data) running,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(String data) done,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(String data)? running,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(String data)? done,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }
}

abstract class Ready implements CommandState {
  const factory Ready() = _$Ready;
}

/// @nodoc

class _$Running implements Running {
  const _$Running(this.data);

  @override
  final String data;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(String data) running,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(String data) done,
  }) {
    return running(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(String data)? running,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(String data)? done,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(data);
    }
    return orElse();
  }
}

abstract class Running implements CommandState {
  const factory Running(final String data) = _$Running;

  String get data;
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.error, {this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(String data) running,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(String data) done,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(String data)? running,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(String data)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }
}

abstract class Error implements CommandState {
  const factory Error(final Object error, {final StackTrace? stackTrace}) =
      _$Error;

  Object get error;
  StackTrace? get stackTrace;
}

/// @nodoc

class _$Done implements Done {
  const _$Done(this.data);

  @override
  final String data;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(String data) running,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(String data) done,
  }) {
    return done(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(String data)? running,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(String data)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(data);
    }
    return orElse();
  }
}

abstract class Done implements CommandState {
  const factory Done(final String data) = _$Done;

  String get data;
}
