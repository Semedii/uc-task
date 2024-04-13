import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Channel with _$Channel {
  factory Channel({
    required int id,
    String? urlOtt,
    required String name,
    required String shortName,
    String? ouid,
  }) = _Channel;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
  factory Channel.fromJson(String? ouid, Map<String, dynamic> json) {
    return Channel(
      id: json['id'] as int,
      urlOtt: json['url_ott'] as String?,
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      ouid: ouid,
    );
  }
}
