import 'package:auto_roote_example/src/di/injection.dart';
import 'package:auto_roote_example/src/utils/navigation/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  configureDepends();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late final AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            // TargetPlatform.android: ZoomPageTransitionsBuilder()
            for (final platform in TargetPlatform.values)
              platform: const FadeUpwardsPageTransitionsBuilder(),
          })),
      routerConfig: router.config(),
    );
  }
}
