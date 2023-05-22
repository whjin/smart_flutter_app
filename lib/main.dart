import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Smart Flutter App',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //       brightness: Brightness.light,
  //       primaryColor: Colors.lightGreen[600],
  //     ),
  //     home: const MyHomePage(title: 'Smart Flutter App Home Page'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '使用第三方包示例',

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('使用第三方包示例'),
        ),
        body: new Center(
          child: new RaiseButton,
        ),
      ),
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

  void _incrementCounter() {
    setState(() {
      _counter += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '点击按钮计数:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
