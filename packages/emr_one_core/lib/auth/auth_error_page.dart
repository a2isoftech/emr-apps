import 'package:emr_one_core/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthErrorPage extends StatelessWidget {
  const AuthErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sorry, there was a problem',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () => context.read<BaseLoginController>().reset(),
              child: const Text('Try again'),
            ),
          ),
        ],
      ),
    );
  }
}
