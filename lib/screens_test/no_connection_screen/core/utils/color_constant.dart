import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#d1c5b1');

  static Color gray500 = fromHex('#b9ab97');

  static Color gray40001 = fromHex('#d1c6b2');

  static Color gray800 = fromHex('#4a4139');

  static Color lime9002a = fromHex('#2a6f5934');

  static Color gray80099 = fromHex('#994a4139');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
