import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/provider/Login/login_state.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginState build() {
    return  LoginState();
  }

  void onUsernameChanged(String username) {
    state = state.copyWith(username: username);
    
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(password: password);
  }


  void onIsPasswordObscureChanged(bool isPasswordObscure) {
    state = state.copyWith(isPasswordObscure: isPasswordObscure);
  }

}
