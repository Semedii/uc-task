import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VidePlayerScreen extends StatelessWidget {
  const VidePlayerScreen({this.channelName, super.key});
  final String? channelName;
  @override
  Widget build(BuildContext context) {
    String base64EncodedString =
        'aHR0cHM6Ly9kZW1vLnVuaWZpZWQtc3RyZWFtaW5nLmNvbS9rOHMvZmVhdHVyZXMvc3RhYmxlL3ZpZGVvL3RlYXJzLW9mLXN0ZWVsL3RlYXJzLW9mLXN0ZWVsLmlzbS8ubTN1OA==';

    String decodedString = utf8.decode(base64.decode(base64EncodedString));
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing $channelName"),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              decodedString,
              betterPlayerConfiguration: const BetterPlayerConfiguration(
                aspectRatio: 1,
                autoPlay: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
