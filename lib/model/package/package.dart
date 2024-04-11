
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package.freezed.dart';
part 'package.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Package with _$Package {
  factory Package({
    required int id,
    required DateTime purchasedDate,
  }) = _Package;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}