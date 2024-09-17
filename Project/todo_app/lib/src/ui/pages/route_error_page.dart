import 'package:flutter/material.dart';

class PageRouteError extends StatefulWidget {
  const PageRouteError({super.key});

  @override
  State<PageRouteError> createState() => _PageRouteErrorState();
}

class _PageRouteErrorState extends State<PageRouteError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: const Center(
        child: Text('Hatali bir route'),
      ),
    );
  }
}
