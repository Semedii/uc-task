import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqcast_task/api/dio_interceptor.dart';
import 'package:uniqcast_task/model/user/user.dart';
import 'package:uniqcast_task/provider/user/user_notifier.dart';
import 'package:uniqcast_task/user_data_storage.dart';

class AuthRepository {
  final Dio dio = DioInterceptor.addInterceptors();

  Future<String> authenticate(WidgetRef ref, String username, String password) async {
  print("adsfasdfas ${dio.options.headers}");
  try {
    final response = await dio.post(
      'https://office-new-dev.uniqcast.com:12611/api/client/v2/global/login',
      data: {
        "login_type": "Credentials",
        "username": username,
        "password": password,
        "device": "flutter_test_device_${"firssstName"}_${"lassstName"}"
      },
    );
    print("asa${response.data['data']}");
    // Assuming User.fromJson is a valid method to parse user data from response
    User user = User.fromJson(response.data['data']);
    UserDataStorage.saveUserData(user);
    return response.data["data"]["access_token"];
  } on DioError catch (e) {
    // Handle Dio errors, including HTTP errors
    if (e.response != null) {
      // The request was made and the server responded with a status code
      print("Dio error response: ${e.response?.statusCode}");
      print("Dio error data: ${e.response?.data}");
      throw Exception('Authentication failed: ${e.message}');
    } else {
      // Something went wrong in setting up or sending the request
      print("Dio error: $e");
      throw Exception('Authentication failed: ${e.message}');
    }
  } catch (e) {
    // Catch any other unexpected errors
    print("Unexpected error: $e");
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
