# Quitter

This is a plugin to quit both Android and iOS gracefully

## Installation

First, add `quitter` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```
quitter: ^1.0.0
```

## Example
```
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
          child: FlatButton(child: Text('Press to quit'), onPressed: () {
            Quitter.quitApplication();
          },),
        ),
      ),
    );
  }
}
```
