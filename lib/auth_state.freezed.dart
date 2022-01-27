// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateSignedIn call(String name) {
    return AuthStateSignedIn(
      name,
    );
  }

  AuthStateLoading loading() {
    return const AuthStateLoading();
  }

  AuthStateSignedOut signedOut() {
    return const AuthStateSignedOut();
  }

  AuthStateError error(String message) {
    return AuthStateError(
      message,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function() loading,
    required TResult Function() signedOut,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value) $default, {
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateSignedInCopyWith<$Res> {
  factory $AuthStateSignedInCopyWith(
          AuthStateSignedIn value, $Res Function(AuthStateSignedIn) then) =
      _$AuthStateSignedInCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AuthStateSignedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSignedInCopyWith<$Res> {
  _$AuthStateSignedInCopyWithImpl(
      AuthStateSignedIn _value, $Res Function(AuthStateSignedIn) _then)
      : super(_value, (v) => _then(v as AuthStateSignedIn));

  @override
  AuthStateSignedIn get _value => super._value as AuthStateSignedIn;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(AuthStateSignedIn(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateSignedIn
    with DiagnosticableTreeMixin
    implements AuthStateSignedIn {
  const _$AuthStateSignedIn(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateSignedIn &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $AuthStateSignedInCopyWith<AuthStateSignedIn> get copyWith =>
      _$AuthStateSignedInCopyWithImpl<AuthStateSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function() loading,
    required TResult Function() signedOut,
    required TResult Function(String message) error,
  }) {
    return $default(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
  }) {
    return $default?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value) $default, {
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedIn implements AuthState {
  const factory AuthStateSignedIn(String name) = _$AuthStateSignedIn;

  String get name;
  @JsonKey(ignore: true)
  $AuthStateSignedInCopyWith<AuthStateSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoadingCopyWith<$Res> {
  factory $AuthStateLoadingCopyWith(
          AuthStateLoading value, $Res Function(AuthStateLoading) then) =
      _$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadingCopyWith<$Res> {
  _$AuthStateLoadingCopyWithImpl(
      AuthStateLoading _value, $Res Function(AuthStateLoading) _then)
      : super(_value, (v) => _then(v as AuthStateLoading));

  @override
  AuthStateLoading get _value => super._value as AuthStateLoading;
}

/// @nodoc

class _$AuthStateLoading
    with DiagnosticableTreeMixin
    implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function() loading,
    required TResult Function() signedOut,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value) $default, {
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class $AuthStateSignedOutCopyWith<$Res> {
  factory $AuthStateSignedOutCopyWith(
          AuthStateSignedOut value, $Res Function(AuthStateSignedOut) then) =
      _$AuthStateSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateSignedOutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSignedOutCopyWith<$Res> {
  _$AuthStateSignedOutCopyWithImpl(
      AuthStateSignedOut _value, $Res Function(AuthStateSignedOut) _then)
      : super(_value, (v) => _then(v as AuthStateSignedOut));

  @override
  AuthStateSignedOut get _value => super._value as AuthStateSignedOut;
}

/// @nodoc

class _$AuthStateSignedOut
    with DiagnosticableTreeMixin
    implements AuthStateSignedOut {
  const _$AuthStateSignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function() loading,
    required TResult Function() signedOut,
    required TResult Function(String message) error,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value) $default, {
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedOut implements AuthState {
  const factory AuthStateSignedOut() = _$AuthStateSignedOut;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateError with DiagnosticableTreeMixin implements AuthStateError {
  const _$AuthStateError(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function() loading,
    required TResult Function() signedOut,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function()? loading,
    TResult Function()? signedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value) $default, {
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AuthStateSignedIn value)? $default, {
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(String message) = _$AuthStateError;

  String get message;
  @JsonKey(ignore: true)
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
