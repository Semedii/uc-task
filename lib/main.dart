import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/screens/homepage.dart';
import 'package:uniqcast_task/screens/login_screens.dart';
import 'package:uniqcast_task/utils/token.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: AuthChecker()
      ),
    );
  }

}
class AuthChecker extends StatelessWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: Token.getToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final String? token = snapshot.data;
          if (token != null) {
            return  HomePage();
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

