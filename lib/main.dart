import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/repository/auth_repository.dart';
import 'package:uniqcast_task/router/app_router.dart';
import 'package:uniqcast_task/screens/homepage.dart';
import 'package:uniqcast_task/screens/login_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        // home: AuthChecker(),
      ),
    );
  }
}

@RoutePage()
class AuthCheckerPage extends ConsumerWidget {
  AuthCheckerPage({super.key});
  final StreamController<bool> streamController = StreamController<bool>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.watch(authNotifierProvider);

    return StreamBuilder<bool>(
      stream: authRepository.authenticationStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Authentication error: please try again'),
              ),
            );
          });
          return const LoginScreen();
        }
        if (snapshot.hasData && snapshot.data == true) {
          return const HomePage();
        } else if (snapshot.hasData && snapshot.data == false) {
          return const LoginScreen();
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
