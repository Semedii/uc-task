class ChannelState {
  final int id;
  final String uid;
  final int position;
  final String type;
  final String resolution;
  final bool isMcast;
  final bool isOtt;
  final bool isDvbt;
  final String? urlMcast;
  final String? urlOtt;
  final bool recordable;
  final int recDuration;
  final bool timeshiftable;
  final int tsRecDuration;
  final bool parentalHidden;
  final String? dvbtTag;
  final String streamPriority;
  final String? backgroundImageId;
  final Map<String, dynamic> metadata;
  final bool highlightsEnabled;
  final String ottType;
  final String name;
  final String shortName;
  final String epgChannel;
  final Map<String, int?> logos;
  final Map<String, dynamic> mosaicAlignmentValues;
  final String cmChannel;

  const ChannelState({
    required this.id,
    required this.uid,
    required this.position,
    required this.type,
    required this.resolution,
    required this.isMcast,
    required this.isOtt,
    required this.isDvbt,
    this.urlMcast,
    this.urlOtt,
    required this.recordable,
    required this.recDuration,
    required this.timeshiftable,
    required this.tsRecDuration,
    required this.parentalHidden,
    this.dvbtTag,
    required this.streamPriority,
    this.backgroundImageId,
    required this.metadata,
    required this.highlightsEnabled,
    required this.ottType,
    required this.name,
    required this.shortName,
    required this.epgChannel,
    required this.logos,
    required this.mosaicAlignmentValues,
    required this.cmChannel,
  });
}
