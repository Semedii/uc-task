
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Channel with _$Channel {
  factory Channel({
    required int id,
    required String uid,
    required int position,
    required String type,
    required String resolution,
    required bool isMcast,
    required bool isOtt,
    required bool isDvbt,
    String? urlMcast,
    String? urlOtt,
    required bool recordable,
    required int recDuration,
    required bool timeshiftable,
    required int tsRecDuration,
    required bool parentalHidden,
    String? dvbtTag,
    required String streamPriority,
    String? backgroundImageId,
    required Map<String, dynamic> metadata,
    required bool highlightsEnabled,
    required String ottType,
    required String name,
    required String shortName,
    required String epgChannel,
    required Map<String, int?> logos,
    required Map<String, dynamic> mosaicAlignmentValues,
    required String cmChannel,
  }) = _Channel;

  /// Convert a JSON object into an [User] instance.
  /// This enables type-safe reading of the API response.
  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}