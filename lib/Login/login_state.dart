class LoginState {
  final String username;
  final String password;
  final bool isPasswordObscure;

  LoginState({
    this.username = "",
    this.password = "",
    this.isPasswordObscure = true,
  });

  LoginState copyWith({
    String? username,
    String? password,
    bool? isPasswordObscure,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      isPasswordObscure: isPasswordObscure ?? this.isPasswordObscure,
    );
  }
}
