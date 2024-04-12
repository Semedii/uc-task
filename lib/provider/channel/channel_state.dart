import 'package:uniqcast_task/model/channel/channel.dart';

abstract class ChannelState {
  ChannelState();
}

class ChannelInitialState extends ChannelState {
  ChannelInitialState();
}

class ChannelLoadingState extends ChannelState {
  ChannelLoadingState();
}

class ChannelLoadedState extends ChannelState {
  List<Channel>? channels;
  ChannelLoadedState({
    this.channels,
  });

  ChannelLoadedState copyWith({
    List<Channel>? channels,
  }) {
    return ChannelLoadedState(
      channels: channels ?? this.channels,
    );
  }
}
