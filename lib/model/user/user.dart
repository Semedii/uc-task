
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class User with _$User {
  factory User({
    required String uid,
    required String name,
    required String deviceId,
    required bool isMulticastNetwork,
    required bool isBlocked,
  }) = _User;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}