import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInterceptor {
  static Dio addInterceptors() {
    Dio dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? token = prefs.getString('token');
        if (token != null) {
          options.headers["Authorization"] = "Bearer $token";
          print("Request made with token: $token"); // Print message when token is added to request headers
        }
        return handler.next(options);
      },
    ));
    return dio;
  }
}
