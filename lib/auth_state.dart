import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(String name) = AuthStateSignedIn;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.signedOut() = AuthStateSignedOut;
  const factory AuthState.error(String message) = AuthStateError;
}
