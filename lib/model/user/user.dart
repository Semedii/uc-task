import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class User with _$User {
  factory User({
    required String uid,
    required String name,
    required int userId,
    required int deviceId,
  }) = _User;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        uid: json['operator_uid'],
        name: json['operator_name'],
        userId: json['user_id'] as int,
        deviceId: json['device_id'] as int,
      );
  }
}
