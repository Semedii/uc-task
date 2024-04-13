import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/components/custom_drawer.dart';
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
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            leading: Container(
              width: MediaQuery.of(context).size.width*.3,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey),
                ),
              ),
              child: Image.network(
                "https://office-new-dev.uniqcast.com:12802/api/client/v1/${channel?.ouid}/channels/${channel?.id}/logos/NORMAL?accessKey=WkVjNWNscFhORDBLCg==",
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return CircularProgressIndicator(color: Colors.white); 
                  }
                },
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Image.asset('assets/logo/logo.png'); 
                },
              ),
            ),
            title: Text(
              channel?.name ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VidePlayerScreen()),
              );
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
