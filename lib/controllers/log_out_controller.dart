import 'package:uniqcast_task/repository/auth_repository.dart';

class LogoutController{
final AuthRepository _authRepository;

  LogoutController(this._authRepository);
  void handleLogout() async {
    try {
      await _authRepository.logout();
    } catch (e) {
      print("Logout failed: $e");
    }
  }
}