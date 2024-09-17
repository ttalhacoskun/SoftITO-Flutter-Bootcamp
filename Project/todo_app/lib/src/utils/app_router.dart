import 'package:flutter/material.dart';
import 'package:todo_app/src/ui/pages/home_page.dart';
import 'package:todo_app/src/ui/pages/route_error_page.dart';

class AppRouter {
  static const homeRoutePath = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings? routeSettings) {
    switch (routeSettings!.name) {
      case homeRoutePath:
        return _route(const PageHome());
      default:
        return _errorPage();
    }
  }

  static _route(Widget page) => MaterialPageRoute(builder: (context) => page);

  static _errorPage() => _route(const PageRouteError());
}
