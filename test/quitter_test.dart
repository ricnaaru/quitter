import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quitter/quitter.dart';

void main() {
  const MethodChannel channel = MethodChannel('quitter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Quitter.quitApplication, '42');
  });
}
