import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_1/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get onPressed => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
        centerTitle: true,
        title: Assets.images.headerLogo.image(scale: 2),
        actions: <Widget>[
          Assets.images.LogoTV.image(scale: 2),
          const SizedBox(width: 10),
          Assets.images.Direct.image(scale: 2),
          const SizedBox(width: 10),

// icon: ElevatedButton(
// onPressed: () {},
// child: Text('a'),
// )
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(.4),
          child: Divider(color: Color.fromARGB(255, 179, 179, 179)),
        ),
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.red,
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListView.builder(
                  itemCount: 50,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                        title: Text('Test $index'),
                      )),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ])))),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories'),
                Row(
                  children: [Icon(Icons.play_arrow), Text('Watch all')],
                )
              ],
            ),
          )
        ],
      ),
    );
    return scaffold;
  }
}
