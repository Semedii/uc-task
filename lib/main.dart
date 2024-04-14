import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/router/app_router.dart';
import 'package:uniqcast_task/screens/homepage.dart';
import 'package:uniqcast_task/screens/login_screens.dart';
import 'package:uniqcast_task/utils/token.dart';

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
  const AuthCheckerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenFuture = ref.watch(tokenProvider.future);

    return FutureBuilder<String?>(
      future: tokenFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final String? token = snapshot.data;
          if (token != null) {
            return const HomePage();
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
