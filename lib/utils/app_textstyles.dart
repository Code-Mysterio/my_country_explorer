import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle boldHeadingBig = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 20, fontWeight: FontWeight.w700);

  static TextStyle boldHeadingMedium = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 16, fontWeight: FontWeight.w700);

  static TextStyle boldBodyBig = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle boldBodyMedium = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 12, fontWeight: FontWeight.w500);

  static TextStyle boldBodySmall = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle lightBodyBig = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle lightBodySmall = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle tinyBody = const TextStyle(
      fontFamily: 'Axiforma', fontSize: 14, fontWeight: FontWeight.w300);
}
