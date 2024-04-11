import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqcast_task/model/channel/channel.dart';
import 'package:uniqcast_task/provider/channel/channel_state.dart';

part 'channel_notifier.g.dart';

@riverpod
class ChannelNotifier extends _$ChannelNotifier {
  @override
  ChannelState build(Channel channel) {
    return ChannelState(
      id: channel.id,
      uid: channel.uid,
      position: channel.position,
      type: channel.type,
      resolution: channel.resolution,
      isMcast: channel.isMcast,
      isOtt: channel.isOtt,
      isDvbt: channel.isDvbt,
      urlMcast: channel.urlMcast,
      urlOtt: channel.urlOtt,
      recordable: channel.recordable,
      recDuration: channel.recDuration,
      timeshiftable: channel.timeshiftable,
      tsRecDuration: channel.tsRecDuration,
      parentalHidden: channel.parentalHidden,
      dvbtTag: channel.dvbtTag,
      streamPriority: channel.streamPriority,
      backgroundImageId: channel.backgroundImageId,
      metadata: channel.metadata,
      highlightsEnabled: channel.highlightsEnabled,
      ottType: channel.ottType,
      name: channel.name,
      shortName: channel.shortName,
      epgChannel: channel.epgChannel,
      logos: channel.logos,
      mosaicAlignmentValues: channel.mosaicAlignmentValues,
      cmChannel: channel.cmChannel,
    );
  }
}
