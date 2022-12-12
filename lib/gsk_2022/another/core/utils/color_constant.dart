import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color tealA700 = fromHex('#0ebe7e');

  static Color tealA702 = fromHex('#0ebe7f');

  static Color tealA701 = fromHex('#07d9ad');

  static Color bluegray4001e = fromHex('#1e76809f');

  static Color lightBlue700 = fromHex('#0d93be');

  static Color black9000f = fromHex('#0f000000');

  static Color teal50 = fromHex('#e7f8f2');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#ececec');

  static Color gray50 = fromHex('#f9f7f7');

  static Color tealA70014 = fromHex('#140ebe7f');

  static Color bluegray900 = fromHex('#333333');

  static Color bluegray500 = fromHex('#677294');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#858ea9');

  static Color gray900A1 = fromHex('#a1202020');

  static Color indigoA400 = fromHex('#4157ff');

  static Color bluegray5001e = fromHex('#1e677294');

  static Color cyan602 = fromHex('#0db3be');

  static Color black90014 = fromHex('#14000000');

  static Color cyan600 = fromHex('#0d9ebe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan601 = fromHex('#0dbebe');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
