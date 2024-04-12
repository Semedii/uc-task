import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/user_data_storage.dart';

class AuthRepository {
  final Dio dio = DioInterceptor.addInterceptors();

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
  }
}
