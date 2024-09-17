import 'package:auto_roote_example/src/ui/auth/layout/auth_layout.dart';
import 'package:auto_roote_example/src/ui/auth/login/login_page.dart';
import 'package:auto_roote_example/src/ui/auth/register/register_page.dart';
import 'package:auto_roote_example/src/ui/home/home_page.dart';
import 'package:auto_roote_example/src/ui/splash/splash_page.dart';
import 'package:auto_roote_example/src/utils/navigation/guards/auth_guard.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RouteSplash.page, initial: true),
        AutoRoute(
            guards: [AuthGuard()],
            page: RouteAuthLayout.page,
            children: [
              AutoRoute(page: RouteAuthLogin.page, initial: true),
              AutoRoute(page: RouteAuthRegister.page)
            ]),
        AutoRoute(page: RouteHome.page)
      ];
}
