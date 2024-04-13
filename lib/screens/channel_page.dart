import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/model/channel/channel.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/provider/channel/channel_notifier.dart';
import 'package:uniqcast_task/provider/channel/channel_state.dart';
import 'package:uniqcast_task/screens/video_player_screen.dart';

class ChannelPage extends ConsumerWidget {
  final List<Package> packages;

  const ChannelPage({super.key, required this.packages});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Channels',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: _buildBody(ref),
      ),
    );
  }

  Widget _buildBody(WidgetRef ref) {
    final channelState = ref.watch(channelNotifierProvider);

    if (channelState is ChannelInitialState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(channelNotifierProvider.notifier).fetchPackageChannels(
              getPackageIds(packages),
            );
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

        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade200),
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Icon(Icons.tv, color: Colors.white),
            ),
            title: Text(
              channel?.name ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const VidePlayerScreen()));
            },
          ),
        );
      },
    );
  }

  List<int> getPackageIds(List<Package> packages) {
    return packages.map((package) => package.id).toList();
  }
}
