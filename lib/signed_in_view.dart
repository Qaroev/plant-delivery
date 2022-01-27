import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/main.dart';

class SignedInView extends HookConsumerWidget {
  const SignedInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return auth.whenOrNull((n) => buildBody(ref, n)) ?? Container();
  }

  Widget buildBody(WidgetRef ref, String name) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            width: 149,
            height: 149,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: Text(name.substring(0, 2)),
          ),
          Text('Name: ${name}'),
          // const Spacer(),
          OutlinedButton(
            onPressed: () => ref.read(authProvider.notifier).signOut(),
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
