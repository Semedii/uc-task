// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  int get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get resolution => throw _privateConstructorUsedError;
  bool get isMcast => throw _privateConstructorUsedError;
  bool get isOtt => throw _privateConstructorUsedError;
  bool get isDvbt => throw _privateConstructorUsedError;
  String? get urlMcast => throw _privateConstructorUsedError;
  String? get urlOtt => throw _privateConstructorUsedError;
  bool get recordable => throw _privateConstructorUsedError;
  int get recDuration => throw _privateConstructorUsedError;
  bool get timeshiftable => throw _privateConstructorUsedError;
  int get tsRecDuration => throw _privateConstructorUsedError;
  bool get parentalHidden => throw _privateConstructorUsedError;
  String? get dvbtTag => throw _privateConstructorUsedError;
  String get streamPriority => throw _privateConstructorUsedError;
  String? get backgroundImageId => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get highlightsEnabled => throw _privateConstructorUsedError;
  String get ottType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  String get epgChannel => throw _privateConstructorUsedError;
  Map<String, int?> get logos => throw _privateConstructorUsedError;
  Map<String, dynamic> get mosaicAlignmentValues =>
      throw _privateConstructorUsedError;
  String get cmChannel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {int id,
      String uid,
      int position,
      String type,
      String resolution,
      bool isMcast,
      bool isOtt,
      bool isDvbt,
      String? urlMcast,
      String? urlOtt,
      bool recordable,
      int recDuration,
      bool timeshiftable,
      int tsRecDuration,
      bool parentalHidden,
      String? dvbtTag,
      String streamPriority,
      String? backgroundImageId,
      Map<String, dynamic> metadata,
      bool highlightsEnabled,
      String ottType,
      String name,
      String shortName,
      String epgChannel,
      Map<String, int?> logos,
      Map<String, dynamic> mosaicAlignmentValues,
      String cmChannel});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? position = null,
    Object? type = null,
    Object? resolution = null,
    Object? isMcast = null,
    Object? isOtt = null,
    Object? isDvbt = null,
    Object? urlMcast = freezed,
    Object? urlOtt = freezed,
    Object? recordable = null,
    Object? recDuration = null,
    Object? timeshiftable = null,
    Object? tsRecDuration = null,
    Object? parentalHidden = null,
    Object? dvbtTag = freezed,
    Object? streamPriority = null,
    Object? backgroundImageId = freezed,
    Object? metadata = null,
    Object? highlightsEnabled = null,
    Object? ottType = null,
    Object? name = null,
    Object? shortName = null,
    Object? epgChannel = null,
    Object? logos = null,
    Object? mosaicAlignmentValues = null,
    Object? cmChannel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      isMcast: null == isMcast
          ? _value.isMcast
          : isMcast // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtt: null == isOtt
          ? _value.isOtt
          : isOtt // ignore: cast_nullable_to_non_nullable
              as bool,
      isDvbt: null == isDvbt
          ? _value.isDvbt
          : isDvbt // ignore: cast_nullable_to_non_nullable
              as bool,
      urlMcast: freezed == urlMcast
          ? _value.urlMcast
          : urlMcast // ignore: cast_nullable_to_non_nullable
              as String?,
      urlOtt: freezed == urlOtt
          ? _value.urlOtt
          : urlOtt // ignore: cast_nullable_to_non_nullable
              as String?,
      recordable: null == recordable
          ? _value.recordable
          : recordable // ignore: cast_nullable_to_non_nullable
              as bool,
      recDuration: null == recDuration
          ? _value.recDuration
          : recDuration // ignore: cast_nullable_to_non_nullable
              as int,
      timeshiftable: null == timeshiftable
          ? _value.timeshiftable
          : timeshiftable // ignore: cast_nullable_to_non_nullable
              as bool,
      tsRecDuration: null == tsRecDuration
          ? _value.tsRecDuration
          : tsRecDuration // ignore: cast_nullable_to_non_nullable
              as int,
      parentalHidden: null == parentalHidden
          ? _value.parentalHidden
          : parentalHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      dvbtTag: freezed == dvbtTag
          ? _value.dvbtTag
          : dvbtTag // ignore: cast_nullable_to_non_nullable
              as String?,
      streamPriority: null == streamPriority
          ? _value.streamPriority
          : streamPriority // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageId: freezed == backgroundImageId
          ? _value.backgroundImageId
          : backgroundImageId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      highlightsEnabled: null == highlightsEnabled
          ? _value.highlightsEnabled
          : highlightsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      ottType: null == ottType
          ? _value.ottType
          : ottType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      epgChannel: null == epgChannel
          ? _value.epgChannel
          : epgChannel // ignore: cast_nullable_to_non_nullable
              as String,
      logos: null == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      mosaicAlignmentValues: null == mosaicAlignmentValues
          ? _value.mosaicAlignmentValues
          : mosaicAlignmentValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      cmChannel: null == cmChannel
          ? _value.cmChannel
          : cmChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String uid,
      int position,
      String type,
      String resolution,
      bool isMcast,
      bool isOtt,
      bool isDvbt,
      String? urlMcast,
      String? urlOtt,
      bool recordable,
      int recDuration,
      bool timeshiftable,
      int tsRecDuration,
      bool parentalHidden,
      String? dvbtTag,
      String streamPriority,
      String? backgroundImageId,
      Map<String, dynamic> metadata,
      bool highlightsEnabled,
      String ottType,
      String name,
      String shortName,
      String epgChannel,
      Map<String, int?> logos,
      Map<String, dynamic> mosaicAlignmentValues,
      String cmChannel});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? position = null,
    Object? type = null,
    Object? resolution = null,
    Object? isMcast = null,
    Object? isOtt = null,
    Object? isDvbt = null,
    Object? urlMcast = freezed,
    Object? urlOtt = freezed,
    Object? recordable = null,
    Object? recDuration = null,
    Object? timeshiftable = null,
    Object? tsRecDuration = null,
    Object? parentalHidden = null,
    Object? dvbtTag = freezed,
    Object? streamPriority = null,
    Object? backgroundImageId = freezed,
    Object? metadata = null,
    Object? highlightsEnabled = null,
    Object? ottType = null,
    Object? name = null,
    Object? shortName = null,
    Object? epgChannel = null,
    Object? logos = null,
    Object? mosaicAlignmentValues = null,
    Object? cmChannel = null,
  }) {
    return _then(_$ChannelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      isMcast: null == isMcast
          ? _value.isMcast
          : isMcast // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtt: null == isOtt
          ? _value.isOtt
          : isOtt // ignore: cast_nullable_to_non_nullable
              as bool,
      isDvbt: null == isDvbt
          ? _value.isDvbt
          : isDvbt // ignore: cast_nullable_to_non_nullable
              as bool,
      urlMcast: freezed == urlMcast
          ? _value.urlMcast
          : urlMcast // ignore: cast_nullable_to_non_nullable
              as String?,
      urlOtt: freezed == urlOtt
          ? _value.urlOtt
          : urlOtt // ignore: cast_nullable_to_non_nullable
              as String?,
      recordable: null == recordable
          ? _value.recordable
          : recordable // ignore: cast_nullable_to_non_nullable
              as bool,
      recDuration: null == recDuration
          ? _value.recDuration
          : recDuration // ignore: cast_nullable_to_non_nullable
              as int,
      timeshiftable: null == timeshiftable
          ? _value.timeshiftable
          : timeshiftable // ignore: cast_nullable_to_non_nullable
              as bool,
      tsRecDuration: null == tsRecDuration
          ? _value.tsRecDuration
          : tsRecDuration // ignore: cast_nullable_to_non_nullable
              as int,
      parentalHidden: null == parentalHidden
          ? _value.parentalHidden
          : parentalHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      dvbtTag: freezed == dvbtTag
          ? _value.dvbtTag
          : dvbtTag // ignore: cast_nullable_to_non_nullable
              as String?,
      streamPriority: null == streamPriority
          ? _value.streamPriority
          : streamPriority // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageId: freezed == backgroundImageId
          ? _value.backgroundImageId
          : backgroundImageId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      highlightsEnabled: null == highlightsEnabled
          ? _value.highlightsEnabled
          : highlightsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      ottType: null == ottType
          ? _value.ottType
          : ottType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      epgChannel: null == epgChannel
          ? _value.epgChannel
          : epgChannel // ignore: cast_nullable_to_non_nullable
              as String,
      logos: null == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      mosaicAlignmentValues: null == mosaicAlignmentValues
          ? _value._mosaicAlignmentValues
          : mosaicAlignmentValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      cmChannel: null == cmChannel
          ? _value.cmChannel
          : cmChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  _$ChannelImpl(
      {required this.id,
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
      required final Map<String, dynamic> metadata,
      required this.highlightsEnabled,
      required this.ottType,
      required this.name,
      required this.shortName,
      required this.epgChannel,
      required final Map<String, int?> logos,
      required final Map<String, dynamic> mosaicAlignmentValues,
      required this.cmChannel})
      : _metadata = metadata,
        _logos = logos,
        _mosaicAlignmentValues = mosaicAlignmentValues;

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final int id;
  @override
  final String uid;
  @override
  final int position;
  @override
  final String type;
  @override
  final String resolution;
  @override
  final bool isMcast;
  @override
  final bool isOtt;
  @override
  final bool isDvbt;
  @override
  final String? urlMcast;
  @override
  final String? urlOtt;
  @override
  final bool recordable;
  @override
  final int recDuration;
  @override
  final bool timeshiftable;
  @override
  final int tsRecDuration;
  @override
  final bool parentalHidden;
  @override
  final String? dvbtTag;
  @override
  final String streamPriority;
  @override
  final String? backgroundImageId;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final bool highlightsEnabled;
  @override
  final String ottType;
  @override
  final String name;
  @override
  final String shortName;
  @override
  final String epgChannel;
  final Map<String, int?> _logos;
  @override
  Map<String, int?> get logos {
    if (_logos is EqualUnmodifiableMapView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_logos);
  }

  final Map<String, dynamic> _mosaicAlignmentValues;
  @override
  Map<String, dynamic> get mosaicAlignmentValues {
    if (_mosaicAlignmentValues is EqualUnmodifiableMapView)
      return _mosaicAlignmentValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mosaicAlignmentValues);
  }

  @override
  final String cmChannel;

  @override
  String toString() {
    return 'Channel(id: $id, uid: $uid, position: $position, type: $type, resolution: $resolution, isMcast: $isMcast, isOtt: $isOtt, isDvbt: $isDvbt, urlMcast: $urlMcast, urlOtt: $urlOtt, recordable: $recordable, recDuration: $recDuration, timeshiftable: $timeshiftable, tsRecDuration: $tsRecDuration, parentalHidden: $parentalHidden, dvbtTag: $dvbtTag, streamPriority: $streamPriority, backgroundImageId: $backgroundImageId, metadata: $metadata, highlightsEnabled: $highlightsEnabled, ottType: $ottType, name: $name, shortName: $shortName, epgChannel: $epgChannel, logos: $logos, mosaicAlignmentValues: $mosaicAlignmentValues, cmChannel: $cmChannel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.isMcast, isMcast) || other.isMcast == isMcast) &&
            (identical(other.isOtt, isOtt) || other.isOtt == isOtt) &&
            (identical(other.isDvbt, isDvbt) || other.isDvbt == isDvbt) &&
            (identical(other.urlMcast, urlMcast) ||
                other.urlMcast == urlMcast) &&
            (identical(other.urlOtt, urlOtt) || other.urlOtt == urlOtt) &&
            (identical(other.recordable, recordable) ||
                other.recordable == recordable) &&
            (identical(other.recDuration, recDuration) ||
                other.recDuration == recDuration) &&
            (identical(other.timeshiftable, timeshiftable) ||
                other.timeshiftable == timeshiftable) &&
            (identical(other.tsRecDuration, tsRecDuration) ||
                other.tsRecDuration == tsRecDuration) &&
            (identical(other.parentalHidden, parentalHidden) ||
                other.parentalHidden == parentalHidden) &&
            (identical(other.dvbtTag, dvbtTag) || other.dvbtTag == dvbtTag) &&
            (identical(other.streamPriority, streamPriority) ||
                other.streamPriority == streamPriority) &&
            (identical(other.backgroundImageId, backgroundImageId) ||
                other.backgroundImageId == backgroundImageId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.highlightsEnabled, highlightsEnabled) ||
                other.highlightsEnabled == highlightsEnabled) &&
            (identical(other.ottType, ottType) || other.ottType == ottType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.epgChannel, epgChannel) ||
                other.epgChannel == epgChannel) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality()
                .equals(other._mosaicAlignmentValues, _mosaicAlignmentValues) &&
            (identical(other.cmChannel, cmChannel) ||
                other.cmChannel == cmChannel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        position,
        type,
        resolution,
        isMcast,
        isOtt,
        isDvbt,
        urlMcast,
        urlOtt,
        recordable,
        recDuration,
        timeshiftable,
        tsRecDuration,
        parentalHidden,
        dvbtTag,
        streamPriority,
        backgroundImageId,
        const DeepCollectionEquality().hash(_metadata),
        highlightsEnabled,
        ottType,
        name,
        shortName,
        epgChannel,
        const DeepCollectionEquality().hash(_logos),
        const DeepCollectionEquality().hash(_mosaicAlignmentValues),
        cmChannel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  factory _Channel(
      {required final int id,
      required final String uid,
      required final int position,
      required final String type,
      required final String resolution,
      required final bool isMcast,
      required final bool isOtt,
      required final bool isDvbt,
      final String? urlMcast,
      final String? urlOtt,
      required final bool recordable,
      required final int recDuration,
      required final bool timeshiftable,
      required final int tsRecDuration,
      required final bool parentalHidden,
      final String? dvbtTag,
      required final String streamPriority,
      final String? backgroundImageId,
      required final Map<String, dynamic> metadata,
      required final bool highlightsEnabled,
      required final String ottType,
      required final String name,
      required final String shortName,
      required final String epgChannel,
      required final Map<String, int?> logos,
      required final Map<String, dynamic> mosaicAlignmentValues,
      required final String cmChannel}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  int get id;
  @override
  String get uid;
  @override
  int get position;
  @override
  String get type;
  @override
  String get resolution;
  @override
  bool get isMcast;
  @override
  bool get isOtt;
  @override
  bool get isDvbt;
  @override
  String? get urlMcast;
  @override
  String? get urlOtt;
  @override
  bool get recordable;
  @override
  int get recDuration;
  @override
  bool get timeshiftable;
  @override
  int get tsRecDuration;
  @override
  bool get parentalHidden;
  @override
  String? get dvbtTag;
  @override
  String get streamPriority;
  @override
  String? get backgroundImageId;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get highlightsEnabled;
  @override
  String get ottType;
  @override
  String get name;
  @override
  String get shortName;
  @override
  String get epgChannel;
  @override
  Map<String, int?> get logos;
  @override
  Map<String, dynamic> get mosaicAlignmentValues;
  @override
  String get cmChannel;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
