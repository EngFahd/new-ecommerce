import 'package:flutter/material.dart';

abstract class Style {
  static const textStyle30 =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const textStyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.normal);

  static const textStyle14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const textStyle14Hint = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xff929292));
  static const textStyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  static const textStyle12 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: Color(0xff929292));
}
