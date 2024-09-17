import 'package:auto_roote_example/src/utils/navigation/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

@RoutePage()
class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(3.seconds, () {
      // AutoRouter.of(context).
      context.router.replace(const RouteAuthLayout());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://store-images.s-microsoft.com/image/apps.37935.9007199266245907.b029bd80-381a-4869-854f-bac6f359c5c9.91f8693c-c75b-4050-a796-63e1314d18c9?h=464',
              width: 128,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Facebook\'a hos geldin')
        ],
      ),
    );
  }
}
