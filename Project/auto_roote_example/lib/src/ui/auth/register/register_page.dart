import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PageAuthRegister extends StatefulWidget {
  const PageAuthRegister({super.key});

  @override
  State<PageAuthRegister> createState() => _PageAuthRegisterState();
}

class _PageAuthRegisterState extends State<PageAuthRegister> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$this'),
    );
  }
}
