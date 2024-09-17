import 'package:dio_example/src/di/injection.dart';
import 'package:dio_example/src/ui/auth/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  configureDepends();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
            const PageLogin() //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late RestService rest = getIt<RestService>();
//   List<UserModel> userList = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//           itemCount: userList.length,
//           itemBuilder: (c, i) {
//             final user = userList[i];
//             return UserRowItem(
//               model: user,
//             );
//           }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: istekAt,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   Future<void> istekAt() async {
//     // userList = await rest.user.getUsers();

//     await rest.auth.login(
//         LoginRequestModel(email: 'john.doe@example.com', password: 'secret'));

//     setState(() {});
//   }
// }
