import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/screens/homepage.dart';
import 'package:uniqcast_task/screens/login_screens.dart';
import 'package:uniqcast_task/utils/token.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: const AuthChecker(),
      ),
    );
  }
}

class AuthChecker extends ConsumerWidget {
  const AuthChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenFuture = ref.watch(tokenProvider.future);
    
    return FutureBuilder<String?>(
      future: tokenFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final String? token = snapshot.data;
          if (token != null) {
            return HomePage();
          } else {
            return const LoginScreen();
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

final tokenProvider = FutureProvider<String?>((ref) async {
  return await Token.getToken();
});
