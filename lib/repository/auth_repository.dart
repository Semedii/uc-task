import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/user_data_storage.dart';

part 'auth_repository.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier{
  final Dio dio = DioInterceptor.addInterceptors();
   AuthNotifier() {
    _checkAuthenticationState();
  }
   @override
  AuthNotifier build() {
    _checkAuthenticationState();
    return AuthNotifier();
  }

  final StreamController<bool> _authenticationStateController = StreamController<bool>.broadcast();
   Stream<bool> get authenticationStateChanges => _authenticationStateController.stream;
    Future<void> _checkAuthenticationState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    _authenticationStateController.add(token != null);
  }
  Future<String> authenticate(
    WidgetRef ref,
    String username,
    String password,
  ) async {
    try {
      final response = await dio.post(
        'https://office-new-dev.uniqcast.com:12611/api/client/v2/global/login',
        data: {
          "login_type": "Credentials",
          "username": username,
          "password": password,
          "device": "flutter_test_device_${"firssstName"}_${"lassstName"}",
        },
      );
      final user = User.fromJson(response.data['data']);
      UserDataStorage.saveUserData(user);
     await saveToken(response.data["data"]["access_token"]);
     await _checkAuthenticationState();
      return response.data["data"]["access_token"];
    } catch (e) {
      throw Exception('Authentication failed: $e');
    }
  }

  Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
     await _checkAuthenticationState();
  }
}
