import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color tealA700 = fromHex('#0ebe7f');

  static Color bluegray500E5 = fromHex('#e5677294');

  static Color bluegray4001e = fromHex('#1e76809f');

  static Color bluegray50026 = fromHex('#26677294');

  static Color black9000f = fromHex('#0f000000');

  static Color indigoA40014 = fromHex('#144157ff');

  static Color indigoA200 = fromHex('#5d5fef');

  static Color teal50 = fromHex('#e7f8f2');

  static Color bluegray900 = fromHex('#333333');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color bluegray500 = fromHex('#677294');

  static Color indigoA40099 = fromHex('#994157ff');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900A1 = fromHex('#a1202020');

  static Color indigoA400 = fromHex('#4157ff');

  static Color bluegray5001e = fromHex('#1e677294');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
