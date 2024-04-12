import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniqcast_task/model/user/user.dart';

class UserDataStorage {
  static Future<void> saveUserData(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('uid', user.uid);
    prefs.setString('name', user.name);
    prefs.setInt('deviceId', user.deviceId);
    prefs.setInt('userId', user.userId);
  }

  static Future<User?> loadUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? uid = prefs.getString('uid');
    final String? name = prefs.getString('name');
    final int? deviceId = prefs.getInt('deviceId');
    final int? userId = prefs.getInt('userId');

    if (uid != null && name != null && deviceId != null && userId != null) {
      return User(uid: uid, name: name, deviceId: deviceId, userId: userId);
    } else {
      return null; 
    }
  }

  static Future<void> clearUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
