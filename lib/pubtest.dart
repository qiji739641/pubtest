
import 'dart:async';

import 'package:flutter/services.dart';

class Pubtest {
  static const MethodChannel _channel = MethodChannel('pubtest');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
