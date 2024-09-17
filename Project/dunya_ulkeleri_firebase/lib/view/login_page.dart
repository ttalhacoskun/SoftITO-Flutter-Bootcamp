import 'package:dunya_ulkeleri/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Yap"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildEmailTextField(),
          SizedBox(height: 16),
          _buildPasswordTextField(),
          SizedBox(height: 16),
          _buildRegisterButton(context),
        ],
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Email"),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text("Şifre"),
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    LoginViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return MyButton(viewModel: viewModel);
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.viewModel,
  });

  final LoginViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Giriş Yap"),
      onPressed: () {
        viewModel.addUser();
      },
    );
  }
}
