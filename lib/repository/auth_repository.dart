import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';

class AuthRepository {
  final Dio dio = DioInterceptor.addInterceptors();

  Future<String> authenticate(String username, String password) async {
    print("adsfasdfas ${dio.options.headers}");
    try {
      final response = await dio.post(
        'https://office-new-dev.uniqcast.com:12611/api/client/v2/global/login',
        data: {
          "login_type": "Credentials",
          "username": username,
          "password": password,
          "device":
              "flutter_test_device_${"firssstName"}_${"lassstName"}" // Make sure to define firstName and lastName variables
        },
      );
      print("Response code: ${response.data}");
      return response.data["data"]["access_token"];
    } catch (e) {
      print("Authentication failed: $e");
      throw Exception('Authentication failed: $e');
    }
  }

  Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token'); // Remove token from SharedPreferences
  }
}
