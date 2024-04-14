import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/repository/auth_repository.dart';

class LogoutController {
  WidgetRef ref;
  LogoutController(this.ref);
  void handleLogout() async {
    final authRepository = ref.watch(authNotifierProvider);
    try {
      await authRepository.logout();
    } catch (e) {
      print("Logout failed: $e");
    }
  }
}