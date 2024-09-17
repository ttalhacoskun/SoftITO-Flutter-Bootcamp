import 'package:dunya_ulkeleri/firebase_options.dart';
import 'package:dunya_ulkeleri/view/login_page.dart';
import 'package:dunya_ulkeleri/view/main_page.dart';
import 'package:dunya_ulkeleri/view_model/login_view_model.dart';
import 'package:dunya_ulkeleri/view_model/main_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => LoginViewModel(),
        child: LoginPage(),
      ),
    );
  }
}
