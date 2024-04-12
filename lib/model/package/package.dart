
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package.freezed.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Package with _$Package {
  factory Package({
    required int id,
    DateTime? purchasedDate,
  }) = _Package;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
factory Package.fromJson(Map<String, dynamic> json) {
  print("aaaaaa $json");
  return Package(
    id: json['id'] as int,
    purchasedDate: json['purchased'] != null ? DateTime.parse(json['purchased']) : null,
  );
}
}