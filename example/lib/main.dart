import 'package:flutter/material.dart';
import 'package:quitter/quitter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Press to quit'),
            onPressed: () {
              Quitter.quitApplication();
            },
          ),
        ),
      ),
    );
  }
}
