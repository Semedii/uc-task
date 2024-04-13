import 'dart:convert';

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VidePlayerScreen extends StatelessWidget {
  const VidePlayerScreen({super.key});

   @override
  Widget build(BuildContext context) {
    String base64EncodedString =
      'aHR0cHM6Ly9kZW1vLnVuaWZpZWQtc3RyZWFtaW5nLmNvbS9rOHMvZmVhdHVyZXMvc3RhYmxlL3ZpZGVvL3RlYXJzLW9mLXN0ZWVsL3RlYXJzLW9mLXN0ZWVsLmlzbS8ubTN1OA==';

  String decodedString = utf8.decode(base64.decode(base64EncodedString));
    return Scaffold(
      appBar: AppBar(
        title: Text("Example player"),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              decodedString,
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 1,
                autoPlay: true,
               // fullScreenByDefault: true
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}