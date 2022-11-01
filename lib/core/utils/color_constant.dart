import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900B2 = fromHex('#b2000000');

  static Color black9008e = fromHex('#8e000000');

  static Color blue600 = fromHex('#0f86e4');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color gray200 = fromHex('#ebeaea');

  static Color black9003f = fromHex('#3f000000');

  static Color black900B5 = fromHex('#b5000000');

  static Color whiteA70083 = fromHex('#83ffffff');

  static Color gray300 = fromHex('#e3e3e3');

  static Color blue60090 = fromHex('#900f86e4');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#000000');

  static Color black90072 = fromHex('#72000000');

  static Color black90082 = fromHex('#82000000');

  static Color bluegray400 = fromHex('#888888');

  static Color black90030 = fromHex('#30000000');

  static Color cyan901 = fromHex('#014275');

  static Color cyan900 = fromHex('#014174');

  static Color gray9000f = fromHex('#0f0f0d23');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90068 = fromHex('#68000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
