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
      endDrawer: CustomDrawer(),
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
        child: _mapStateToWidget(ref),
      ),
    );
  }

  Widget _mapStateToWidget(WidgetRef ref) {
    final channelState = ref.watch(channelNotifierProvider);

    if (channelState is ChannelInitialState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(channelNotifierProvider.notifier).fetchPackageChannels(
              _getPackageIds(packages),
            );
      });
      return const Center(child: CircularProgressIndicator());
    }

    if (channelState is ChannelLoadingState) {
      return const Center(child: CircularProgressIndicator());
    }

    if (channelState is ChannelLoadedState) {
      return _getChannelList(channelState.channels);
    } else {
      return const Center(child: Text('Unknown state'));
    }
  }

  Widget _getChannelList(List<Channel>? channels) {
    return ListView.builder(
      itemCount: channels?.length ?? 0,
      itemBuilder: (context, index) {
        final channel = channels?[index];

        return _getChannelContainer(context, channel);
      },
    );
  }

  Container _getChannelContainer(BuildContext context, Channel? channel) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: _getChannelInfo(context, channel),
    );
  }

  ListTile _getChannelInfo(BuildContext context, Channel? channel) {
    return ListTile(
      contentPadding: const EdgeInsets.all(16.0),
      leading: _getChannelLogo(context, channel),
      title: _getChannelTitle(channel),
      onTap: () => _onChannelTapped(context),
    );
  }

  Text _getChannelTitle(Channel? channel) {
    return Text(
      channel?.name ?? '',
      style: const TextStyle(color: Colors.white),
    );
  }

  Container _getChannelLogo(BuildContext context, Channel? channel) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      decoration: _getChannelLogoDecoration(),
      child: _getChannelLogoImage(channel),
    );
  }

  Image _getChannelLogoImage(Channel? channel) {
    return Image.network(
      "https://office-new-dev.uniqcast.com:12802/api/client/v1/${channel?.ouid}/channels/${channel?.id}/logos/NORMAL?accessKey=WkVjNWNscFhORDBLCg==",
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return const CircularProgressIndicator(color: Colors.white);
        }
      },
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Image.asset('assets/logo/logo.png');
      },
    );
  }

  BoxDecoration _getChannelLogoDecoration() {
    return const BoxDecoration(
      border: Border(
        right: BorderSide(color: Colors.grey),
      ),
    );
  }

  List<int> _getPackageIds(List<Package> packages) {
    return packages.map((package) => package.id).toList();
  }

  void _onChannelTapped(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const VidePlayerScreen()));
  }
}
