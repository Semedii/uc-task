// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthCheckerRoute.name: (routeData) {
      final args = routeData.argsAs<AuthCheckerRouteArgs>(
          orElse: () => const AuthCheckerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthCheckerPage(key: args.key),
      );
    },
    ChannelRoute.name: (routeData) {
      final args = routeData.argsAs<ChannelRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChannelPage(
          key: args.key,
          packages: args.packages,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    VidePlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VidePlayerRouteArgs>(
          orElse: () => const VidePlayerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VidePlayerScreen(
          channelName: args.channelName,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthCheckerPage]
class AuthCheckerRoute extends PageRouteInfo<AuthCheckerRouteArgs> {
  AuthCheckerRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthCheckerRoute.name,
          args: AuthCheckerRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthCheckerRoute';

  static const PageInfo<AuthCheckerRouteArgs> page =
      PageInfo<AuthCheckerRouteArgs>(name);
}

class AuthCheckerRouteArgs {
  const AuthCheckerRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthCheckerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ChannelPage]
class ChannelRoute extends PageRouteInfo<ChannelRouteArgs> {
  ChannelRoute({
    Key? key,
    required List<Package> packages,
    List<PageRouteInfo>? children,
  }) : super(
          ChannelRoute.name,
          args: ChannelRouteArgs(
            key: key,
            packages: packages,
          ),
          initialChildren: children,
        );

  static const String name = 'ChannelRoute';

  static const PageInfo<ChannelRouteArgs> page =
      PageInfo<ChannelRouteArgs>(name);
}

class ChannelRouteArgs {
  const ChannelRouteArgs({
    this.key,
    required this.packages,
  });

  final Key? key;

  final List<Package> packages;

  @override
  String toString() {
    return 'ChannelRouteArgs{key: $key, packages: $packages}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VidePlayerScreen]
class VidePlayerRoute extends PageRouteInfo<VidePlayerRouteArgs> {
  VidePlayerRoute({
    String? channelName,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VidePlayerRoute.name,
          args: VidePlayerRouteArgs(
            channelName: channelName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VidePlayerRoute';

  static const PageInfo<VidePlayerRouteArgs> page =
      PageInfo<VidePlayerRouteArgs>(name);
}

class VidePlayerRouteArgs {
  const VidePlayerRouteArgs({
    this.channelName,
    this.key,
  });

  final String? channelName;

  final Key? key;

  @override
  String toString() {
    return 'VidePlayerRouteArgs{channelName: $channelName, key: $key}';
  }
}
