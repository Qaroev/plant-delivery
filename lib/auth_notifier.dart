import 'dart:convert';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'auth_state.dart';

import 'config.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState.loading()) {
    final token = _box.get('refresh_token');
    if (token != null) {
      state = AuthState(token);
    } else {
      state = const AuthState.signedOut();
    }
  }

  final _appAuth = FlutterAppAuth();
  final _box = Hive.box('prefs');

  void signIn() async {
    try {
      final result =
          await _appAuth.authorizeAndExchangeCode(AuthorizationTokenRequest(
        Config.authClientId,
        Config.authRedirectUrl,
        issuer: 'https://${Config.authDomain}',
        scopes: ['openid', 'profile', 'offline_access'],
        promptValues: ['login'],
      ));

      if (result == null) {
        throw Exception('Auth result is null');
      }

      _box.put('refresh_token', result.refreshToken);
      _box.put('id_token', result.idToken);

      state = AuthState(result.refreshToken!);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  void signOut() {
    _box.delete('refresh_token');
    _box.delete('id_token');
    state = const AuthState.signedOut();
  }

  Map<String, dynamic> _parseIdToken(String idToken) {
    final parts = idToken.split(r'.');
    assert(parts.length == 3);

    return jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
  }
}
