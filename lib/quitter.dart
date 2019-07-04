import 'dart:async';

import 'package:flutter/services.dart';

class Quitter {
  static const MethodChannel _channel =
      const MethodChannel('quitter');

  static Future<void> quitApplication() async {
    await _channel.invokeMethod('quitApplication');
  }
}
