// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      deviceId: json['deviceId'] as String,
      isMulticastNetwork: json['isMulticastNetwork'] as bool,
      isBlocked: json['isBlocked'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'deviceId': instance.deviceId,
      'isMulticastNetwork': instance.isMulticastNetwork,
      'isBlocked': instance.isBlocked,
    };
