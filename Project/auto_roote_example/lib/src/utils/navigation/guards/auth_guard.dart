import 'package:auto_roote_example/src/di/injection.dart';
import 'package:auto_roote_example/src/stores/auth/auth_store.dart';
import 'package:auto_roote_example/src/utils/navigation/router/app_router.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authenticated = getIt<AuthStore>().isLoggedin;
    if (authenticated) {
      resolver.redirect(const RouteHome());
      return;
    }
    resolver.next(true);
  }
}
