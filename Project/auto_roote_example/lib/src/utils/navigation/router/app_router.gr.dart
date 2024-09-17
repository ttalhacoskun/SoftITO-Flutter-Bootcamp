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
    RouteAuthLayout.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageAuthLayout(),
      );
    },
    RouteAuthLogin.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageAuthLogin(),
      );
    },
    RouteAuthRegister.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageAuthRegister(),
      );
    },
    RouteHome.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageHome(),
      );
    },
    RouteSplash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageSplash(),
      );
    },
  };
}

/// generated route for
/// [PageAuthLayout]
class RouteAuthLayout extends PageRouteInfo<void> {
  const RouteAuthLayout({List<PageRouteInfo>? children})
      : super(
          RouteAuthLayout.name,
          initialChildren: children,
        );

  static const String name = 'RouteAuthLayout';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageAuthLogin]
class RouteAuthLogin extends PageRouteInfo<void> {
  const RouteAuthLogin({List<PageRouteInfo>? children})
      : super(
          RouteAuthLogin.name,
          initialChildren: children,
        );

  static const String name = 'RouteAuthLogin';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageAuthRegister]
class RouteAuthRegister extends PageRouteInfo<void> {
  const RouteAuthRegister({List<PageRouteInfo>? children})
      : super(
          RouteAuthRegister.name,
          initialChildren: children,
        );

  static const String name = 'RouteAuthRegister';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageHome]
class RouteHome extends PageRouteInfo<void> {
  const RouteHome({List<PageRouteInfo>? children})
      : super(
          RouteHome.name,
          initialChildren: children,
        );

  static const String name = 'RouteHome';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageSplash]
class RouteSplash extends PageRouteInfo<void> {
  const RouteSplash({List<PageRouteInfo>? children})
      : super(
          RouteSplash.name,
          initialChildren: children,
        );

  static const String name = 'RouteSplash';

  static const PageInfo<void> page = PageInfo<void>(name);
}
