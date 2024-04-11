// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: json['id'] as int,
      uid: json['uid'] as String,
      position: json['position'] as int,
      type: json['type'] as String,
      resolution: json['resolution'] as String,
      isMcast: json['isMcast'] as bool,
      isOtt: json['isOtt'] as bool,
      isDvbt: json['isDvbt'] as bool,
      urlMcast: json['urlMcast'] as String?,
      urlOtt: json['urlOtt'] as String?,
      recordable: json['recordable'] as bool,
      recDuration: json['recDuration'] as int,
      timeshiftable: json['timeshiftable'] as bool,
      tsRecDuration: json['tsRecDuration'] as int,
      parentalHidden: json['parentalHidden'] as bool,
      dvbtTag: json['dvbtTag'] as String?,
      streamPriority: json['streamPriority'] as String,
      backgroundImageId: json['backgroundImageId'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>,
      highlightsEnabled: json['highlightsEnabled'] as bool,
      ottType: json['ottType'] as String,
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      epgChannel: json['epgChannel'] as String,
      logos: Map<String, int?>.from(json['logos'] as Map),
      mosaicAlignmentValues:
          json['mosaicAlignmentValues'] as Map<String, dynamic>,
      cmChannel: json['cmChannel'] as String,
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'position': instance.position,
      'type': instance.type,
      'resolution': instance.resolution,
      'isMcast': instance.isMcast,
      'isOtt': instance.isOtt,
      'isDvbt': instance.isDvbt,
      'urlMcast': instance.urlMcast,
      'urlOtt': instance.urlOtt,
      'recordable': instance.recordable,
      'recDuration': instance.recDuration,
      'timeshiftable': instance.timeshiftable,
      'tsRecDuration': instance.tsRecDuration,
      'parentalHidden': instance.parentalHidden,
      'dvbtTag': instance.dvbtTag,
      'streamPriority': instance.streamPriority,
      'backgroundImageId': instance.backgroundImageId,
      'metadata': instance.metadata,
      'highlightsEnabled': instance.highlightsEnabled,
      'ottType': instance.ottType,
      'name': instance.name,
      'shortName': instance.shortName,
      'epgChannel': instance.epgChannel,
      'logos': instance.logos,
      'mosaicAlignmentValues': instance.mosaicAlignmentValues,
      'cmChannel': instance.cmChannel,
    };
