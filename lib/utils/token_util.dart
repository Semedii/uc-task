import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenUtil {
  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if(await isTokenValid(token)){
      return token;
    }
    return null;
    
  }

  static DateTime? getExpiryDate(String token) {
    return Jwt.getExpiryDate(token);
  }

 static Future<bool> isTokenValid(String? token) async {
    bool isTokenPresent = token != null && token.isNotEmpty;
    if (isTokenPresent) {
      DateTime tokenExpiration = getExpiryDate(token)!;
      return tokenExpiration.isAfter(DateTime.now());
    }
    return false;
  }
}
