import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/model/channel/channel.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/provider/channel/channel_notifier.dart';
import 'package:uniqcast_task/provider/channel/channel_state.dart';

class ChannelPage extends ConsumerWidget {
  final List<Package> packages;

  const ChannelPage({super.key, required this.packages});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Channels '),
      ),
      body: _buildBody(ref),
    );
  }

  Widget _buildBody(WidgetRef ref) {
    final channelState = ref.watch(channelNotifierProvider);


    if (channelState is ChannelInitialState) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
    ref.read(channelNotifierProvider.notifier).fetchPackageChannels(getPackageIds(packages));
  });
      return const Center(child: CircularProgressIndicator());
    }

    if (channelState is ChannelLoadingState) {
      return const Center(child: CircularProgressIndicator());
    }

    if (channelState is ChannelLoadedState) {
      return _buildChannelList(channelState.channels);
    } else {
      return const Center(child: Text('Unknown state'));
    }
  }

  Widget _buildChannelList(List<Channel>? channels) {
    return ListView.builder(
      itemCount: channels?.length ?? 0,
      itemBuilder: (context, index) {
        final channel = channels?[index];

        return ListTile(
          title: Text(
            "Channel name: ${channel?.name.toString()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          subtitle: Text(channel!.shortName),
          onTap: () {
                  print("Clicked on channel ${channel.id}");
                },
        );
      },
    );
  }
  List<int> getPackageIds(List<Package> packages) {
  return packages.map((package) => package.id).toList();
}

}
