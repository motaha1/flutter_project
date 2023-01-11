import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray900Bf = fromHex('#bf090f47');

  static Color bluegray90026 = fromHex('#26090f47');

  static Color lightBlue300 = fromHex('#4db7ff');

  static Color indigoA4004c = fromHex('#4c4157ff');

  static Color bluegray500E5 = fromHex('#e5677294');

  static Color red200 = fromHex('#ff9598');

  static Color blueA200 = fromHex('#3e7dff');

  static Color red400 = fromHex('#eb5757');

  static Color lightBlue301 = fromHex('#56ccf2');

  static Color indigoA40019 = fromHex('#194157ff');

  static Color black9003f = fromHex('#3f000000');

  static Color green700 = fromHex('#219653');

  static Color tealA70014 = fromHex('#140ebe7f');

  static Color black90087 = fromHex('#870b0b0a');

  static Color pinkA100 = fromHex('#ff70a7');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color bluegray500Cc = fromHex('#cc677294');

  static Color bluegray9009e = fromHex('#9e091c3f');

  static Color redA701 = fromHex('#ff0000');

  static Color redA700 = fromHex('#f90217');

  static Color indigoA4000f = fromHex('#0f4157ff');

  static Color tealA700 = fromHex('#15bd92');

  static Color gray600 = fromHex('#828282');

  static Color bluegray300Cc = fromHex('#cc959cb4');

  static Color gray400 = fromHex('#c4c4c4');

  static Color tealA702 = fromHex('#0ebe7f');

  static Color tealA701 = fromHex('#0ebe7e');

  static Color orangeA200 = fromHex('#f2994a');

  static Color blue500 = fromHex('#1987fb');

  static Color gray800 = fromHex('#47484c');

  static Color bluegray90073 = fromHex('#72091c3f');

  static Color bluegray50026 = fromHex('#26677294');

  static Color black9000f = fromHex('#0f000000');

  static Color bluegray50028 = fromHex('#28677294');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#ebebeb');

  static Color indigoA40007 = fromHex('#074157ff');

  static Color gray201 = fromHex('#e7e9ec');

  static Color orange200 = fromHex('#ffc06f');

  static Color bluegray90072 = fromHex('#72090f47');

  static Color bluegray900A5 = fromHex('#a5090f47');

  static Color tealA7005f = fromHex('#5f0ebe7f');

  static Color black90011 = fromHex('#11000000');

  static Color bluegray600 = fromHex('#536184');

  static Color bluegray402 = fromHex('#888888');

  static Color bluegray401 = fromHex('#6f7fa1');

  static Color indigoA40099 = fromHex('#994157ff');

  static Color bluegray400 = fromHex('#858ea9');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA701 = fromHex('#fefefe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray52 = fromHex('#fcfcfc');

  static Color gray51 = fromHex('#f9f7f7');

  static Color deepOrangeA200 = fromHex('#ff793a');

  static Color gray50 = fromHex('#f7fbff');

  static Color black900 = fromHex('#000000');

  static Color bluegray900F2 = fromHex('#f2090f47');

  static Color bluegray5007f = fromHex('#7f677294');

  static Color indigo50 = fromHex('#e1e8f0');

  static Color gray900 = fromHex('#222222');

  static Color tealA400 = fromHex('#19e5a5');

  static Color bluegray900 = fromHex('#090f47');

  static Color bluegray500 = fromHex('#677294');

  static Color indigoA401 = fromHex('#3c50e6');

  static Color indigoA400 = fromHex('#4157ff');

  static Color bluegray905 = fromHex('#091c3f');

  static Color bluegray90019 = fromHex('#19090f47');

  static Color bluegray902 = fromHex('#080e47');

  static Color bluegray901 = fromHex('#333333');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
