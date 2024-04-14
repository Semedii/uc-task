import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/provider/Login/login_notifier.dart';
import 'package:uniqcast_task/repository/auth_repository.dart';

class LoginController {
  WidgetRef ref;
  LoginController(this.ref);
 
  void handleLogin() async {
    final authRepository = ref.watch(authNotifierProvider);
    var state = ref.watch(loginNotifierProvider);
    try {
      final token =
          await authRepository.authenticate(ref, state.username, state.password);
      await authRepository.saveToken(token);
    } catch (e) {
      print("Authentication failed: $e");
    }
  }
}
