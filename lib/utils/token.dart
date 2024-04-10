import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Token {
  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static DateTime? getExpiryDate(String token) {
    return Jwt.getExpiryDate(token);
  }

 static Future<bool> isTokenValid() async {
    String? token = await getToken();
    bool isTokenPresent = token != null && token.isNotEmpty;
    if (isTokenPresent) {
      DateTime tokenExpiration = getExpiryDate(token)!;
      return tokenExpiration.isAfter(DateTime.now());
    }
    return false;
  }
}
