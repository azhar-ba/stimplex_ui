
import 'dart:async';

import 'package:flutter/services.dart';
export 'package:stimplex_ui/presentation/button.dart';

class StimplexUi {
  static const MethodChannel _channel = MethodChannel('stimplex_ui');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
