import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/provider/Login/login_notifier.dart';
import 'package:uniqcast_task/controllers/login_controller.dart';
import 'package:uniqcast_task/router/app_router.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginNotifierProvider);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getUsernameField(ref),
            _getPasswordField(ref),
            _getLoginButton(context, ref),
          ],
        ),
      ),
    ));
  }

  ElevatedButton _getLoginButton(BuildContext context, WidgetRef ref) {
    LoginController controller = LoginController(ref);
    return ElevatedButton(
      onPressed: () {
        controller.handleLogin();
        AutoRouter.of(context).push(const HomeRoute());
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.brown,
        ),
      ),
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _getPasswordField(WidgetRef ref) {
    return _getTextFormField(
      labelText: "password",
      iconData: Icons.password,
      onChanged: ref.read(loginNotifierProvider.notifier).onPasswordChanged,
    );
  }

  Widget _getUsernameField(WidgetRef ref) {
    return _getTextFormField(
      labelText: "username",
      iconData: Icons.person,
      onChanged: ref.read(loginNotifierProvider.notifier).onUsernameChanged,
    );
  }

  Widget _getTextFormField({
    required String labelText,
    required IconData iconData,
    Function(String)? onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        decoration: _geTextFieldDecoration(labelText, iconData),
        onChanged: onChanged,
      ),
    );
  }

  InputDecoration _geTextFieldDecoration(String labelText, IconData iconData) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black),
      border: _getTextFieldBorder(),
      prefixIcon: _getTextFieldIcon(iconData),
      focusedBorder: _getTextFieldBorder(),
    );
  }

  Icon _getTextFieldIcon(IconData iconData) {
    return Icon(
      iconData,
      color: Colors.grey,
    );
  }

  OutlineInputBorder _getTextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    );
  }
}
