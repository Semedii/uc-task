import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/provider/Login/login_notifier.dart';
import 'package:uniqcast_task/controllers/login_controller.dart';
import 'package:uniqcast_task/provider/user/user_notifier.dart';
import 'package:uniqcast_task/screens/homepage.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late LoginController _controller;
  @override
  void initState() {
    _controller = LoginController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(loginNotifierProvider);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getTextFormField(
              labelText: "username",
              iconData: Icons.person,
              onChanged:
                  ref.read(loginNotifierProvider.notifier).onUsernameChanged,
            ),
            _getTextFormField(
              labelText: "password",
              iconData: Icons.password,
              onChanged:
                  ref.read(loginNotifierProvider.notifier).onPasswordChanged,
            ),
            ElevatedButton(
              onPressed: (){
                _controller.handleLogin();
               Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ));
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
