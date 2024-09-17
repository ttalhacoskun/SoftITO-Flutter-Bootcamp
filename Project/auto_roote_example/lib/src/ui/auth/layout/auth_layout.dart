import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageAuthLayout extends StatefulWidget {
  const PageAuthLayout({super.key});

  @override
  State<PageAuthLayout> createState() => _PageAuthLayoutState();
}

class _PageAuthLayoutState extends State<PageAuthLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth islemleri'),
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
          child: const AutoRouter()),
    );
  }
}
