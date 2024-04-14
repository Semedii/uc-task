import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uniqcast_task/main.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/screens/channel_page.dart';
import 'package:uniqcast_task/screens/homepage.dart';
import 'package:uniqcast_task/screens/login_screens.dart';
import 'package:uniqcast_task/screens/video_player_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthCheckerRoute.page, initial: true, children: <AutoRoute>[
          AutoRoute(page: LoginRoute.page),
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: ChannelRoute.page),
          AutoRoute(page: VidePlayerRoute.page),
        ])
      ];
}
