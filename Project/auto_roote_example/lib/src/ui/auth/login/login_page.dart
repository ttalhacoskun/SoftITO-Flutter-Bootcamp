import 'package:auto_roote_example/src/di/injection.dart';
import 'package:auto_roote_example/src/stores/auth/auth_store.dart';
import 'package:auto_roote_example/src/utils/navigation/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageAuthLogin extends StatefulWidget {
  const PageAuthLogin({super.key});

  @override
  State<PageAuthLogin> createState() => _PageAuthLoginState();
}

class _PageAuthLoginState extends State<PageAuthLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$this'),
        TextButton(
            onPressed: () {
              getIt<AuthStore>().setLoggedIn(true);
              context.router.push(const RouteHome());
            },
            child: const Text('login')),
        TextButton(
            onPressed: () {
              context.router.push(const RouteAuthRegister());
            },
            child: const Text('Register'))
      ],
    );
  }
}
