import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/auth_notifier.dart';
import 'package:test_app/auth_state.dart';
import 'package:test_app/onboarding_view.dart';
import 'package:test_app/signed_in_view.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((_) => AuthNotifier());

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('prefs');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: HomeWidget()),
    );
  }
}

class HomeWidget extends HookConsumerWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    ref.listen<AuthState>(
      authProvider,
      (prev, next) => next.whenOrNull(
        (name) => null,
        error: (e) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e))),
      ),
    );
    return auth.when(
      (name) => const SignedInView(),
      loading: () => const Center(child: CircularProgressIndicator()),
      signedOut: () => const OnboardingView(),
      error: (e) => const OnboardingView(),
    );
  }
}
