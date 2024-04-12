import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/provider/Login/login_notifier.dart';
import 'package:uniqcast_task/repository/auth_repository.dart';

class LoginController {
  WidgetRef ref;
  LoginController(this.ref);
  final AuthRepository _authRepository = AuthRepository();
  void handleLogin() async {
    var state = ref.watch(loginNotifierProvider);
    try {
      final token =
          await _authRepository.authenticate(ref, state.username, state.password);
      await _authRepository.saveToken(token);
    } catch (e) {
      print("Authentication failed: $e");
    }
  }
}
