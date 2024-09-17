import 'package:dio_example/src/models/auth/login/login_request_model.dart';
import 'package:dio_example/src/strores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  LoginRequestModel requestModel = LoginRequestModel(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (e) => requestModel.email = e,
            ),
            TextField(
              onChanged: (e) => requestModel.password = e,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  await Stores.auth.login(requestModel);
                },
                child: const Text('login')),
            Observer(builder: (context) {
              return Text('${Stores.auth.hasAuth}');
            })
          ],
        ),
      ),
    );
  }
}
